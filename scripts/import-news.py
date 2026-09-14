from html.parser import HTMLParser
from urllib.request import urlopen,Request
from urllib.parse import urljoin
from pathlib import Path
import re,json,time,subprocess
class Links(HTMLParser):
 def __init__(self):super().__init__();self.links=[];self.href=None;self.label=''
 def handle_starttag(self,t,a):
  if t=='a':self.href=dict(a).get('href');self.label=''
 def handle_data(self,d):
  if self.href:self.label+=d
 def handle_endtag(self,t):
  if t=='a' and self.href:self.links.append((self.href,' '.join(self.label.split())));self.href=None
root=Path(__file__).resolve().parents[1]
url='https://www.globenewswire.com/search/organization/currenc%2520group%2520inc%C2%A7/load/before'
items={}
for page in range(7):
 print('Reading page',page+1,flush=True)
 html=subprocess.check_output(['curl','-fsSL','--max-time','20',url]).decode()
 p=Links();p.feed(html)
 for href,title in p.links:
  m=re.search(r'/news-release/(\d{4})/(\d{2})/(\d{2})/\d+/\d+/en/',href)
  if m and title:
   absolute=urljoin(url,href);items[absolute]={'date':'-'.join(m.groups()),'title':title,'url':absolute}
 nxt=next((urljoin(url,h) for h,t in p.links if 'Next Page' in t),None)
 if not nxt:break
 url=nxt;time.sleep(.3)
records=sorted(items.values(),key=lambda n:n['date'],reverse=True)
(root/'audit/globenewswire-archive.json').write_text(json.dumps(records,indent=2,ensure_ascii=False)+'\n')
(root/'site/data/news.json').write_text(json.dumps(records,indent=2,ensure_ascii=False)+'\n')
print(json.dumps(records,indent=2,ensure_ascii=False))
