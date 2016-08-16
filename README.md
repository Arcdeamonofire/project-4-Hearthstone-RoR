# project-4-Hearthstone-RoR
A Ruby on Rails app created by Samuel Weisse

# Languages used:
HTML, CSS, Javascript, Ruby, Ruby on Rails

# Synopsis
A deck building and card searching app for Hearthstone using: http://hearthstoneapi.com/

# Trello
Daily Tracker: https://trello.com/b/E2btGm5i/final-projects

# MVP
- [x] Site/App with page views:
	- user index
	- search
	- card show page
	- user decks

- [x] User Login/logout

- [x] card search

# User Stories
- User will see home screen when they load the app
- User will be able to create a unique username and password
- Users will be able to sign into app
- Users will be able to log out of their session
- Users will be able to search

# Stretch Goals
- User will be able to advance search by multiple variables
- User will be able to access a unique view for their activity with deck(s) they are building
- Users will be able to add a card to their "decks" (add card to a specific deck)
- Users who are not logged in can do simple and advanced searches but cannot add cards
- User can name decks
- User will be able to delete cards from deck
- User will be able to edit info about their deck (name, ...)
- User can delete deck(s)
- User can see some relevant analysis of the deck they've been building (mana curve, color distribution, suggested land count)

# Wireframe

![wireframe - index](wireframes/wireframe_index.png)

# Technologies Used (API Reference?)
HTML, CSS, Javascript, Ruby, Ruby On Rails, http://hearthstoneapi.com/

# Approach
I created a Ruby on Rails app for Hearthstone. It searches an API for cards matching the class criteria and returns the results to the screen.

I began with the user and built off of that. Both the decks and the cards in the app's database are based off the user. The cards are based off the deck and the deck off the user. The idea was that a user could create a new user then create decks and add cards to the decks. The API search functionality was built parallel to the user and deck functionality because they were not dependent until the adding card to deck routes.

# Live Site Link

https://hearthstonecodex.herokuapp.com/

#Installation Instructions
None at the moment

# Unsolved Problems
- Some bugs with the API itself that aren't within my ability to fix because they demand access to data I can't get. (Images are beyond my control)
