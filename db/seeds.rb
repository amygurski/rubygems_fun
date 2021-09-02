User.create!(email: 'admin@example.com', password: 'admin@example.com', password_confirmation: 'admin@example.com')

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::Seinfeld.quote, 
    user_id: User.first.id,
    short_description: Faker::TvShows::Buffy.quote,
    language: LanguageList::COMMON_LANGUAGES.map { |l| l.name }.shuffle.first,
    level: ['Beginner', 'Intermediate', 'Advanced'].shuffle.first,
    price: Faker::Number.between(from: 1000, to: 20000)
  }])
end
