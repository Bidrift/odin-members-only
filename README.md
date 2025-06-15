# Members Only project

This is an implementation of the members only project from the Odin Project Ruby on Rails path. It implements a simple authentication sysmtem using `devise` gem to realize the authentication, and allows users to create or view posts.

As a non-user, you may:

- View posts' title and body
- Login

As a user, you may;

- Posts' owners
- Create posts

# Technical stack

For this project, I used the following stack:

- Ruby on Rails `8.0.2v`
- HTML ERB
- `devise` gem

In order to run the server, simply clone the repo and run the command `rails server`.

If you face any issues with database, migrate it using `rails db:migrate`