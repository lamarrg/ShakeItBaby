# ShakeItBaby

Another app from the Rob Percival course for iOS. 

This is designed to randomly select a sound effect from a list and play it when the phone is shaken. I did this and went a step further... Instead of creating an array and forcing it to select from there, I created a directory that the app refences, so I can add files at will. See line 20 of ViewController. 

The trick is the directory must be created outiside of the project and imported. (Or at least this is the way I have been able to get this to happen.) In your Finder (on a Mac), go to your project folder and create a new folder. Inside Xcode, go to "Build Phases" > "Copy Bundle Resources" and import the folder there. Tada, you are now able to reference it, and use it dynamically. 
