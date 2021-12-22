# iOS_app


## The initial project

The project gathers ***Pierre-Loup CHARDAT, Romain BAUD, Kilian COLLIE***. 
The project consists in creating an app listing bars and pint prices in Odense.:beers: 
This project was inspired by "MrGoodBeer", an app that helps to find cheap bars and cheap pints in France:fr: :baguette_bread: .As this app is very useful but does not exist in Denmark, we want to create a similar, but simpler app for the centre of Odense.

From a technical point of view, this project will allow us to get familiar with XCode, Swift, SwiftUI and MVVMs, which we are all discovering. As additional features, we want to use:
- A `data store` with a database for the price of pints in each bar;
- `Web service calls` with the need to get a map and locations of bars in Odense;
- `iOS features`, especially `GPS`.

The current idea of the application is that it opens on a map centred on the position of the device. Around it, you would find dots showing the different bars and the price of the cheapest pint. Some additional elements could be added depending on the time remaining and the difficulties encountered (refined searches, type of beers, discounts, a page listing the bars in ascending order of beer price, possibilities for the user to add a comment or maybe even a bar).:beer:

## How to install ?


Just download the .zip file from github, then open "Place2Beer" -> "Place2Beer.xcodeproj" and run the simulator.


Amongst the announced features, we used GPS as an iOS feature, DataCore for a local database. An online database with Heroku and MongoDB was considered but too complex to install, so we did not use a web service call. This implies that the list of bars must be added by the user by filling in the bar information.
Example :
name : `The Old Irish Pub`
longitude : `10.383633`
latitude : `55,395434`
price : `40`
This should be enough to display the bars on the map.

Other notable content added to the app is an interactive map (click on pins to see the bar page), a bar listing page, the ability to add and remove bars, and a night mode on the bar page to open the app at night.
