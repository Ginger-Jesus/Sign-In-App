# Sign-In-App
---
## What is it?
Sign-In-App is an iOS app for student check-in / check-out at Crossroads School for the Arts and Sciences. This app passes a Student ID number, a reason for departure/arrival and an IN/OUT value to a server, which is accessible by the front desk. The server has a Student ID number library and adds a time stamp to the check in/out. The app has a barcode scanner that can access the numerical ID # for speedy sign in as well as a manual entry option.

## Process:

This app started out as a cool idea that my comp-sci class had to create a more environmentally friendly and more convenient way to keep track of student attendance at Crossroads. With this idea in mind, the first step was to brainstorm what exactly the app needed in order to function correctly.  After that, a group of us took a shot at designing the bare framework of the app in Xcode. The app needed to collect a student's ID #, a value stating whether they were leaving or coming in, and a reason. I worked closely with David Deiser on making a buttonless segue between the barcode scanner (to read a student ID) and the next view (shoutout David). I ended up choosing to finish this app fully and get it ready to be used by the school in the 2019-2020 school year. My main challenge left was to smooth out the app and make it faster, more intuitive, and still functional. I added extra features such as manual ID entry and an "Other" reason option.

## What did I learn?

There were two main challenges with this project - figuring out how a barcode scanner worked and polishing an app. The first was the easier of the two, I struggled for a while and had to research barcode libraries to determine what type of barcode is on our student IDs (turns out there are like 40 types of barcodes and they all look the same). Eventually I grew to understand 
