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
    { title: "Child's Play", director: 'Tom Holland', year: 1988 , genre:'Comedy Horror', scream_factor:4, image:'https://fanart.tv/fanart/movies/10585/movieposter/childs-play-570f38cf7e169.jpg', synopsis: "A single mother gives her son a much sought-after doll for his birthday, only to discover that it is possessed by the soul of a serial killer." },
    { title: "Child's Play 2", director: 'John Lafia', year:1990 , genre:'Comedy Horror', scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BM2Y0NGNiNGItYzYzOS00NDk0LTkzNWUtMGZjMjc1NWM4MzE3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "While Andy's mother is admitted to a psychiatric hospital, the young boy is placed in foster care, and Chucky, determined to claim Andy's soul, is not far behind." },
    { title: "Child's Play 3", director: 'Jack Bender', year: 1991 , genre:'Comedy Horror', scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BOTRjYWVhNjAtMjIwOC00NjU3LTliZTAtMjczMmEwMzQ5Y2Y3XkEyXkFqcGdeQXVyMjQwNTU1NTc@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Chucky returns for revenge against Andy, the young boy who defeated him, and now a teenager living in a military academy." },
    { title: 'Bride of Chucky', director: 'Ronny Yu', year: 1998 , genre:'Comedy Horror', scream_factor:1, image:'https://m.media-amazon.com/images/M/MV5BZTcxZDE5Y2MtODNmOC00YjQ0LTk3YzQtZWU1OTU2ZTgwNDVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Chucky, the doll possessed by a serial killer, discovers the perfect mate to kill and revive into the body of another doll." },
    { title: 'Us', director: 'Jordan Peele', year: 2019 , genre:'Thriller', scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A family's serene beach vacation turns to chaos when their doppelgängers appear and begin to terrorize them." },
    { title: 'The Shining', director: 'Stanley Kubrick', year: 1980 , genre:'Horror', scream_factor:5, image:'http://2.bp.blogspot.com/-KsCQLacsXzw/TzTenusdPGI/AAAAAAAAG6Q/8iOED9infZE/s1600/the-shining-1980.jpg', synopsis: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future." },
    {title: 'The Silence Of The Lambs', director: 'Jonathan Demme', year:1991, genre: 'Thriller', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims."},
    {title: 'The Blair Witch Project', director: 'Daniel Myrick', year:1999, genre: 'Found Footage', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BNzQ1NDBlNDItMDAyYS00YTI2LTgwMmYtMzAwMzg4NDFlM2ZmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Three film students vanish after traveling into a Maryland forest to film a documentary on the local Blair Witch legend, leaving only their footage behind."},
    {title: "Willy's Wonderland", director: 'Kevin Lewis', year:2021, genre: 'Comedy Horror', scream_factor:1, image: 'https://m.media-amazon.com/images/M/MV5BOTc3ZjVkYTYtMDZiMC00OTliLWE3OTEtYjY5NTBmNGJjYTBmXkEyXkFqcGdeQXVyNDExMzMxNjE@._V1_UY268_CR0,0,182,268_AL_.jpg', synopsis: "A quiet drifter is tricked into a janitorial job at the now condemned Wally's Wonderland. The mundane tasks suddenly become an all-out fight for survival against wave after wave of demonic animatronics. Fists fly, kicks land, titans clash -- and only one side will make it out alive."},
    {title: 'Wrong Turn', director: 'Mike P. Nelson', year:2021, genre: 'Thriller', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BM2Y5ZWE2MTMtODE3ZC00NWQ4LWJkNzctNGY4Njg5NDY5MzNlXkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Friends hiking the Appalachian Trail are confronted by 'The Foundation', a community of people who have lived in the mountains for hundreds of years.
    "},
    {title: 'Get Out', director: 'Jordan Peele', year:2017, genre: 'Psychological Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point."},
    {title: 'The Witch', director: 'Robert Eggers', year:2015, genre: 'Mystery Horror', scream_factor:3, image: 'https://m.media-amazon.com/images/M/MV5BMTUyNzkwMzAxOF5BMl5BanBnXkFtZTgwMzc1OTk1NjE@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A family in 1630s New England is torn apart by the forces of witchcraft, black magic, and possession."},
    {title: 'The Invisible Man', director: 'Leigh Whannell', year:2020, genre: 'Mystery Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BZjFhM2I4ZDYtZWMwNC00NTYzLWE3MDgtNjgxYmM3ZWMxYmVmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "When Cecilia's abusive ex takes his own life and leaves her his fortune, she suspects his death was a hoax. As a series of coincidences turn lethal, Cecilia works to prove that she is being hunted by someone nobody can see."},
    {title: 'Hereditary', director: 'Ari Aster', year:2018, genre: 'Mystery Horror', scream_factor:3, image: 'https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A grieving family is haunted by tragic and disturbing occurrences."},
    {title: 'Alien', director: 'Ridley Scott', year:1979, genre: 'Monster Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BMmQ2MmU3NzktZjAxOC00ZDZhLTk4YzEtMDMyMzcxY2IwMDAyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun."},
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


