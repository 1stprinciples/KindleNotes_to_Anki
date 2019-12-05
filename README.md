# KindleNotes_to_Anki
I have created a simple python program that can take HTML export from the Kindle app for mobile and then convert it into Anki importable text file. Planning to convert this into an Anki plugin later on. 

## I/O
Input - HTML export from Kindle app  <br />
Output - A text file that contains notes (front) and the respective highlights (back)

## Instructions
To import Kindle highlights as Anki cards, do the following. 

1. Open a book in the Kindle app. 
2. Filter for 'Notes' and export it.
2. Rename that file as index3.html
3. Run import_anki.command
4. Import the resulting text file 'your_file.txt' into Anki with a ';' separator.
