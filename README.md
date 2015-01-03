# README

This website lets a user create an unlimited number of counters which can be incremented, decremented, or deleted. Other users viewing the same set of counters will see the updates in realtime thanks to the Pusher API.

For right now, all users who visit the site will see the list of all counters. I'm planning on adding some sort of 'room' feature so that users can create a set of counters to share with just their friends, or to keep to themselves. Validation & authentication on this will probably be very minimal as this app is intended as a proof-of-concept of real-time in Rails.

## PlusPlus has...

* Front-end templates in Knockout.JS

* Websocket support via Pusher

* Ruby 2.1.5, Rails 4.2.0


This app is extremely dependent on [Pusher](http://pusher.com/), so you'll need to get Pusher credentials in order to run it locally. I'm using [Figaro](https://github.com/laserlemon/figaro) to manage the credentials. Currently (v1.0.0) Figaro's readme uses Pusher as an example, so follow its instructions to get set up.

