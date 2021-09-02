# README

Having fun checking out some different gems via [Ruby on Rails 6: Learn 25+ gems and build a Startup MVP 2021](https://www.udemy.com/course/ruby-on-rails-6-learn-20-gems-build-an-e-learning-platform).

  - [haml_rails](https://github.com/haml/haml-rails) - first time using haml instead of erb. Helpful converter: https://html2haml.herokuapp.com/
  - [simple_form](https://github.com/heartcombo/simple_form)
  - [faker](https://github.com/faker-ruby/faker) - Faker::Educator used for course names; descriptions taken from Faker::TvShows::Seinfeld. While messing with this I discovered `rake db:seed:replant`, added in rails 6 ([PR #34779](https://github.com/rails/rails/pull/34779)), which truncates the tables of each database for the current environment and loads the seeds.
  - [devise](https://github.com/heartcombo/devise) 
  - [friendly_id](https://github.com/norman/friendly_id) - the [guide](https://norman.github.io/friendly_id/file.Guide.html) is helpful; slugging and pretty URLs, e.g. .../courses/biological-science-188 instead of .../courses/Biological%20Science%20188 
  - [trackable](https://github.com/heartcombo/devise/wiki/How-To:-Add-:trackable-to-Users) - devise module that tracks info about user sign in
  - [confirmable](https://github.com/heartcombo/devise/wiki/How-To:-Add-:confirmable-to-Users) - devise module that sends emails with confirmation instructions and verifies whether an account is already confirmed to sign in
  - [language_list](https://github.com/scsmith/language_list) - not in the course, added this one for fun to get a wider range of possible course languages easier
