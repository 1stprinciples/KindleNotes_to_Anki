#!/usr/bin/env python
from bs4 import BeautifulSoup
import os
import re
os.chdir("/Users/suguthansekar/Library/Mobile Documents/com~apple~CloudDocs/Mine/MS/Course work/Semester 3/Anki imports/")
with open("index3.html", "r") as f:
    
    contents = f.read()

    soup = BeautifulSoup(contents, 'html.parser')

notes = []
highlights = []
pattern = re.compile(r'Note -')
my_enum = enumerate(soup.findAll("div"))
for index, content in my_enum:
    if index > 0:
        if 'Note -' in content.text:
            #print all div
            #print(content)
            highlights.append(list(enumerate(soup.findAll("div")))[index-1][1].text.strip())
            notes.append(list(enumerate(soup.findAll("div")))[index+1][1].text.strip())

with open('your_file.txt', 'w') as f:
    for i in range(0,len(highlights)):
        f.write( notes[i] +';' + highlights[i] + "\n")