# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserMovie.destroy_all;
Movie.destroy_all;
User.destroy_all



# Blaire, there are actually 9 Chucky films in the franchise!
movies = [
    { title: "Child's Play", director: 'Tom Holland', year: 1988 , genre:'Comedy Horror', scream_factor:0, image:'https://fanart.tv/fanart/movies/10585/movieposter/childs-play-570f38cf7e169.jpg', synopsis: "testing one" },
    { title: "Child's Play 2", director: 'John Lafia', year:1990 , genre:'Comedy Horror', scream_factor:0, image:'https://fanart.tv/fanart/movies/11186/movieposter/childs-play-2-579c7bbc8eb05.jpg', synopsis: "" },
    { title: "Child's Play 3", director: 'Jack Bender', year: 1991 , genre:'Comedy Horror', scream_factor:0, image:'https://fanart.tv/fanart/movies/11187/movieposter/childs-play-3-5253e4a63855d.jpg', synopsis: "" },
    { title: 'Bride of Chucky', director: 'Ronny Yu', year: 1998 , genre:'Comedy Horror', scream_factor:0, image:'https://tse1.mm.bing.net/th?id=OIP.2jAHjoZ7lQ4a829VTHykYQHaKj&pid=Api&P=0&w=300&h=300', synopsis: "" },
    { title: 'Us', director: 'Jordan Peele', year: 2019 , genre:'Thriller', scream_factor:0, image:'https://media.comicbook.com/2018/12/us-movie-poster-jordan-peele-2019-1149921.jpeg', synopsis: "" },
    { title: 'The Shining', director: 'Stanley Kubrick', year: 1980 , genre:'Horror', scream_factor:0, image:'http://2.bp.blogspot.com/-KsCQLacsXzw/TzTenusdPGI/AAAAAAAAG6Q/8iOED9infZE/s1600/the-shining-1980.jpg', synopsis: "" },
]

movies.each { |movie| Movie.create!(movie) }


users=[
    {username: 'Blaire'},
    {username: 'Justine'}
]

users.each { |user| User.create!(user) }



user_movies=[
    {movie: Movie.first, user: User.first },
    {movie: Movie.second, user: User.first },
    {movie: Movie.third, user: User.second }


    
]
user_movies.each { |user_movie| UserMovie.create!(user_movie) }


