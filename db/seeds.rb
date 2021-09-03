# frozen_string_literal: true

User.create!(email: 'admin@example.com', password: 'admin@example.com', password_confirmation: 'admin@example.com')
User.create!(email: 'xander@example.com', password: 'xander@example.com', password_confirmation: 'xander@example.com')
User.create!(email: 'spike@example.com', password: 'spike@example.com', password_confirmation: 'spike@example.com')

50.times do
  Course.create!([{
                   title: Faker::Educator.course_name,
                   description: Faker::TvShows::Seinfeld.quote,
                   user_id: User.first.id,
                   short_description: Faker::TvShows::Buffy.quote,
                   language: LanguageList::COMMON_LANGUAGES.map(&:name).sample,
                   level: %w[Beginner Intermediate Advanced].sample,
                   price: Faker::Number.between(from: 1000, to: 20_000)
                 }])
end
