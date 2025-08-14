puts "Cleaning database..."
Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts "Creating movies..."
movie1 = Movie.create!(
  title: "Wonder Woman 1984",
  overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s.",
  poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
  rating: 6.9
)

movie2 = Movie.create!(
  title: "The Shawshank Redemption",
  overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison.",
  poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
  rating: 8.7
)

movie3 = Movie.create!(
  title: "Titanic",
  overview: "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.",
  poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
  rating: 7.9
)

movie4 = Movie.create!(
  title: "Ocean's Eleven",
  overview: "Danny Ocean and his eleven accomplices plan to rob three Las Vegas casinos simultaneously.",
  poster_url: "https://image.tmdb.org/t/p/original/9wSbe4CwObACCQvaUVhWQyLR5Vz.jpg",
  rating: 8.5
)

movie5 = Movie.create!(
  title: "Inception",
  overview: "A thief who steals corporate secrets through the use of dream-sharing technology.",
  poster_url: "https://image.tmdb.org/t/p/original/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg",
  rating: 7.0
)

movie6 = Movie.create!(
  title: "Avengers: Endgame",
  overview: "After the devastating events of Avengers: Infinity War, the universe is in ruins.",
  poster_url: "https://image.tmdb.org/t/p/original/ulzhLuWrPK07P1YkdWQLZnQh1JL.jpg",
  rating: 8.4
)

movie7 = Movie.create!(
  title: "Interstellar",
  overview: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
  poster_url: "https://image.tmdb.org/t/p/original/rAiYTfKGqDCRIIqo664sY9XZIvQ.jpg",
  rating: 8.6
)

puts "Creating lists..."
list1 = List.create!(name: "Drama")
list2 = List.create!(name: "All time favourites")
list3 = List.create!(name: "Girl Power")

puts "Creating bookmarks..."
Bookmark.create!(comment: "Recommended by John", movie: movie3, list: list2)
Bookmark.create!(comment: "Superhero movie revisited in 2020", movie: movie1, list: list3)
Bookmark.create!(comment: "Spielberg's masterly Oscar-winning drama", movie: movie2, list: list1)
Bookmark.create!(comment: "2020 release", movie: movie5, list: list1)
Bookmark.create!(comment: "Based on Stephen King's 1996 novel", movie: movie4, list: list3)

puts "Seeding done!"
