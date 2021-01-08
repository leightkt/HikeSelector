# HIKESELECTOR Technical Documentation
Created by: Mary Beth Ingram and Kat Leight

HIKESELECTOR is a Command Line Interface (CLI) application that allows a user to login, view hikes, and keep a list of favorite hikes. It's the only hiking app you'll ever need again. EVER. Maybe.
 

## SUMMARY
Hiking is a popular activity for Colorado Residents. Choosing a hike can be more work than going on the hike itself! Skip the agonizing and use HIKESELCTOR. 

This app allows a user to login with a user name and password.  
A new user will be prompted to create a new user name and password.  
The user can view and select hikes based on a variety of filters.   
The user can view the details of a selected hike.   
When viewing a hike's details, the user is given the option to save that hike to a list of favorite hikes.  
The user can view their favorite hikes.  
When viewing their favorite hikes, a user can choose to remove any hike from their favorites list.   
When a user is done choosing a hike or reviewing their favorites, they can exit the application.   
User name, password, and favorite hikes are stored in a SQLite3 database, so the information is stored from session to session.   

#### BACKGROUND INFORMATION

Hike Filters
  1. Location  
   -String of "City, ST"   
   -User is given an alphabetical list of all hike locations and can select with arrow keys or list will filter by letter when user starts typing  
  2. Dog Friendly?  
    -Boolean of true (dog friendly) or false (not dog friendly)  
    -User will see a list of dog friendly hikes when this option is selected  
  3. Elevation Gain  
    -Integer of total elevation gain over the hike in miles  
    -User can select from a set list of elevation gains  
  4. Difficulty  
    -String of one of three options ("Beginner", "Intermediate", "Advanced") based on hike difficulty  
    -User can select from a set list of difficulties  
  5. Distance  
    -Integer of total distance of the hike in miles  
    -User can select from a set list of distances  

Other Hike Attributes  
    Hikes are displayed by hike name  
    -String of "name"  

Data for hikes were seeded by the developers and feature hikes near the front range of Denver, CO. 
Future iterations could include a call to an appropriate API to seed more hike information in the database. 

##### TECHNOLOGY
This app was created using ruby, ActiveRecord, TTY-Prompt, TTY-Spinner, TTY-Font, TTY-Box, Colorize, and SQLite3. 

###### Demo
You can watch a video demostration here: [https://youtu.be/eR9YVtxmrjI]