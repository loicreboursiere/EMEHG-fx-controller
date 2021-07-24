# EMEHG-fx-controller

This repository gathers all elements needed to build and run EMEHG-fx-controller.
This device contains a 4x7 rotary encoders matrix with push option.
The encoders matrix aims at controlling hexaphonic audio effects parameters through MIDI CC messages.
 As it sends out MIDI commands, this controller can be use for any kind of control operation.
 This project is a part of the developments made for Loïc Reboursière Phd Thesis : 
    "Organology, genealogy and practice of hexaphonic guitar : from independent string effects to instrumental control of other sounds." 
 
This version is based on an Arduino Micro. It has been directly soldered on two perfboards : one with the rotaries, one with the CD4051s.
 
 The folder is organized as follows : 
 ```
 EMEHG-fx-controller.
 └───cad_drawings
 └───code
 └───datasheet
 └───fritzing
 └───img
 └───Pd
 ```
- cad_drawings : contains a document with drawings of rotaries with the correct spacing.
- code : contains the code to be uploaded on the microcontroller. Depending on the version you're using, the structure of this folder can change (Arduino sketch or Platform IO (through VS) code).
- datasheet : datasheets of used components.
- img : pictures of the different versions of the controller.
- Pd : test pd patches that receive data from the controller and display them.
