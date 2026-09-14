from pathlib import Path
from urllib.request import urlopen,Request
from concurrent.futures import ThreadPoolExecutor
import json,hashlib
root=Path(__file__).resolve().parents[1]
base='https://s202.q4cdn.com/618684105/files/'
paths=['design/banner/'+n+'.jpg' for n in ['home_banner','banner-inner','investor_resources_banner','financials_banner','stock_information_banner','event_presentation_banner','about_us_banner']]
paths += ['images/bg_01.jpg']
paths += ['images/board/'+n+'_board_photo.jpg' for n in ['Alex','Eng','Eric','Kevin','Wan']]
paths += ['doc_governance/2025/Nov/28/'+n for n in ['Audit-Committee-Charter-4858-0687-1268-3-712620-604eb2.pdf','Code-of-Business-Conduct-and-Ethics-4888-7972-3492-2-a9138a-c281fa.pdf','Compensation-Committee-Charter-4858-6034-8644-3-617c32-a49737.pdf','Corporate-Governance-Guidelines-4867-9495-7796-3-6ba020-2994e4.pdf','Nominating-and-Corporate-Governance-Committee-Charter-4883-8053-5524-3-264b66-7ad1b7.pdf']]
def get(p):
 f=root/'site/public/assets'/Path(p).name
 try:
  if not f.exists():
   with urlopen(Request(base+p,headers={'User-Agent':'Mozilla/5.0'}),timeout=40) as r:
    data=r.read()
    if not (data.startswith(b'%PDF') or data.startswith(b'\xff\xd8') or data.startswith(b'\x89PNG')): raise ValueError('Unexpected file format')
    f.write_bytes(data)
  return {'url':base+p,'path':str(f.relative_to(root)),'sha256':hashlib.sha256(f.read_bytes()).hexdigest(),'status':'downloaded'}
 except Exception as e: return {'url':base+p,'status':'failed','error':str(e)}
with ThreadPoolExecutor(max_workers=4) as pool: results=list(pool.map(get,paths))
(root/'audit/additional-assets.json').write_text(json.dumps(results,indent=2)+'\n')
print(json.dumps({'downloaded':sum(x['status']=='downloaded' for x in results),'failures':[x for x in results if x['status']=='failed']},indent=2))
