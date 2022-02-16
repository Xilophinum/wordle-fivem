# wordle-fivem
A FiveM hack implementation for the popular game Wordle

https://streamable.com/5xomly

(not sure why the video makes the box borders grey, but they are all white and smooth, video makes them look ugly :face_exhaling:)

I am providing the entire Vue 3 source code. You can edit to your liking. I believe it to be responsive to displays, but if there is a problem, just rebuild with your edited changes to the CSS.

Should be drag and drop ready to go out of the zip, and I made a test command (/wordle) for you to test before using or implementing it as a hack for your jobs :slight_smile: The words list is local, you can add, change, edit, whatever you like. Currently there are just over 660 words.

Rebuild if any changes are made to code!!! (install node modules, then run ‘npm run build’)

If there is a huge issue I may of overlooked let me know, but I will not be customizing the script for your framework needs, implentation is simple with an easy promisified export. Returns a boolean true if successful, false if all 6 attempts were made and failed, or the user pressed the ESC key. Enjoy!
