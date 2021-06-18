# sketchy

The project is done as an assignment for sketshare.

## Project Summary

A simple tool for collaborative drawing with your peers. It is a single page application which has a toolbar, a plane canvas for sketching. 

## Getting Started

In order to run this app on your device, you must have a release build installed.
A release build can be installed on a real device and not on the emulator. In order to install it on a real device. You must enable USB debugging on your device and connect it to your laptop/desktop where you have flutter installed. Take a clone of this project using ## git clone https://github.com/arbazadam/sketchy.git. Open the IDE of your choice with flutter already set up, launch the terminal and fire this command: flutter build apk --release.

## Project structure

All the business logic is inside the lib/business_logic/cubit folder.
The parent screen is inside lib/presentation folder and all widgets are placed inside lib/presentation/widgets folder.
There are automated tests for the pen bloc placed inside the test/business_logic/cubit folder.
All the data related files are inside the lib/constants folder.
The pubspec file has bloc, equatable, flutter_bloc and font_awesome_flutter packages as dependencies.
The images are referenced from my Linkedin and Facebook profile just to not increase the app size.
