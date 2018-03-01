# AAroundLA


### Overview
My goal for this project was to give users a quick and easy way to look up and find an AA meeting in their area.

The program provided by Alcoholics Anonymous (AA) to help their members stay sober is very comprehensive, yet most members will claim a major key to their success (or failure) is in attending meetings. The challenge of getting and staying sober is impossible to do on your own. Alcoholism/addiction is a disease of loneliness and isolation; meetings overcome that and provide the opportunity to connect with people. They are instrumental in helping keep one sober and preventing relapse.

Link to page:
<https://aaroundla.herokuapp.com/>

### Technical Requirements
+ Have at least 2 models (more if they make sense) – one representing someone using your application, and at least one more that represents the main functional idea for your app.
+ Include sign up/log in functionality, with authentication. Implement basic authorization by restricting access to certain features, such as editing and deleting a resource, to an authenticated user.
+ Have complete RESTful routes for at least one of your resources with GET, POST, PUT/PATCH, and DELETE.
+ Have full CRUD for at least one of your resources.
+ Have semantically clean HTML and CSS.
+ Be deployed online (Heroku) and accessible to the public.

### Technology Used:
+ Ruby on Rails
+ Heroku
+ Bootstrap
+ HTML
+ CSS

### User Stories
+ As a visitor to the webpage, I want to view meetings in the area.
+ As a user, I want to be able to add, edit and delete a meeting I posted.


### Challenges
+ Association and syntax between multiple models (`belongs_to`, `has_many`).
+ Applying Bootstrap was more difficult than I expected.

### Future Add ons
+ Add a third model called Reviews, to allow Users to write a review on a meeting.
+ Rate meetings.
+ Add a sobreity calculator.
+ Allow Users to message each other.
+ Expand to other major cities.