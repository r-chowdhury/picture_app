# README

<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
 Rails app with full CRUD functionality. Picture sharing application:

 - User can sign in
 - Upload a picture via URL
 - Pictures can be given one or more tag with a title
 - Browse all other pictures and browse pictures from across all the users by tag name
 - Can leave comments on individual pictures


 No tests. Write your own if necessary.

 Domain Modeling
 Models:
 - Users - will need an email address, username, and password
 - The email and username should be unique (validation)
 - Use bcrypt gem to handle user authentication.

 Picture:
 - Column for image_url (string) and a title, A picture belongs_to a user.

 tags:
 - name column which is basically a hashtag.

 picture_tags
 - A picture has many tags.
 - Same picture can have multiple tags.
 - Picture has many tags through picture_tags
 - columns are picture and tags instances.

 comments:
 - To the left of any picture by any user, even their own photo.
 - A comment belongs_to and belongs_to a given user.

 
