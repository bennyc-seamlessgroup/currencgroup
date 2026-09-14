from html.parser import HTMLParser
from pathlib import Path
import subprocess,re,json,html
from urllib.parse import urljoin
class Links(HTMLParser):
 def __init__(self):super().__init__();self.links=[];self.href=None;self.label=''
 def handle_starttag(self,t,a):
  if t=='a':self.href=dict(a).get('href');self.label=''
 def handle_data(self,d):
  if self.href:self.label+=d
 def handle_endtag(self,t):
  if t=='a' and self.href:self.links.append((self.href,' '.join(self.label.split())));self.href=None
root=Path(__file__).resolve().parents[1]
url='https://tranglo.com/press-and-media/page/3/'
links={}
for page in range(6):
 print('Tranglo archive',page+3,flush=True)
 text=subprocess.check_output(['curl','-fsSL','--max-time','20',url]).decode()
 p=Links();p.feed(text)
 links.update({h:t for h,t in p.links if '/press/' in h})
 nxt=next((h for h,t in p.links if t=='Next page'),None)
 if not nxt:break
 url=nxt
(root/'audit/tranglo-links.json').write_text(json.dumps(links,indent=2,ensure_ascii=False)+'\n')
print(json.dumps(links,indent=2,ensure_ascii=False))
