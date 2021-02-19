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
    {title:'Children of the Corn', director:'Fritz Kiersch', year:1984, genre:'Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMDg3OTc2OTQtZDA0My00YTJiLTg3ZTYtOGYwZWM1NWVhZDdiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A young couple is trapped in a remote town where a dangerous religious cult of children believes that everyone over age 18 must be killed."},
    {title:'Children of the Corn', director:'Kurt Wimmer', year:2020, genre:'Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BMjcxNWZjMmQtMDMxMy00NWZhLWEyOGUtZTgxYjc2ZDZkNjNhXkEyXkFqcGdeQXVyODY5NzkyMjA@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"The film describes the events leading up to, and including, the massacre of the adults of a small town in Nebraska by their children, after the adults' irresponsibility ruins the crop and the children's future."},
    {title:'Children of the Corn', director:'Donald P. Borchers', year:2009, genre:'Horror',scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BYTgyMmUzZmItMTA5NS00NDljLTk1NDQtZTJkMWM4ZWU1YzEwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR6,0,182,268_AL_.jpg',synopsis:"While traveling, an unhappy married couple encounter a cult of murderous children who worship an entity called He Who Walks Behind the Rows."},
    {title:'Christine', director:'John Carpenter', year:1983, genre:'Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BZThhNDQxNzAtOTYzZC00MzZkLWI2YjItOTE2ZjliZDY3NTFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A nerdish boy buys a strange car with an evil mind of its own and his nature starts to change to reflect it."}, 
    {title:'Cujo', director:'Lewis Teague', year:1983, genre:'Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMjI2MDU1MTk5NV5BMl5BanBnXkFtZTgwODA2MDE3MTE@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Cujo, a friendly St. Bernard, contracts rabies and conducts a reign of terror on a small American town."},
    {title:"Child's Play", director: 'Tom Holland', year: 1988 , genre:'Comedy Horror', scream_factor:4, image:'https://fanart.tv/fanart/movies/10585/movieposter/childs-play-570f38cf7e169.jpg', synopsis: "A single mother gives her son a much sought-after doll for his birthday, only to discover that it is possessed by the soul of a serial killer." },
    {title:"Child's Play 2", director: 'John Lafia', year:1990 , genre:'Comedy Horror', scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BM2Y0NGNiNGItYzYzOS00NDk0LTkzNWUtMGZjMjc1NWM4MzE3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "While Andy's mother is admitted to a psychiatric hospital, the young boy is placed in foster care, and Chucky, determined to claim Andy's soul, is not far behind." },
    {title:"Child's Play 3", director: 'Jack Bender', year: 1991 , genre:'Comedy Horror', scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BOTRjYWVhNjAtMjIwOC00NjU3LTliZTAtMjczMmEwMzQ5Y2Y3XkEyXkFqcGdeQXVyMjQwNTU1NTc@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Chucky returns for revenge against Andy, the young boy who defeated him, and now a teenager living in a military academy." },
    {title:'Bride of Chucky', director: 'Ronny Yu', year: 1998 , genre:'Comedy Horror', scream_factor:1, image:'https://m.media-amazon.com/images/M/MV5BZTcxZDE5Y2MtODNmOC00YjQ0LTk3YzQtZWU1OTU2ZTgwNDVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Chucky, the doll possessed by a serial killer, discovers the perfect mate to kill and revive into the body of another doll." },
    {title:'Us', director: 'Jordan Peele', year: 2019 , genre:'Thriller', scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A family's serene beach vacation turns to chaos when their doppelgängers appear and begin to terrorize them." },
    {title:'The Shining', director: 'Stanley Kubrick', year: 1980 , genre:'Horror', scream_factor:5, image:'http://2.bp.blogspot.com/-KsCQLacsXzw/TzTenusdPGI/AAAAAAAAG6Q/8iOED9infZE/s1600/the-shining-1980.jpg', synopsis: "A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future." },
    {title:'The Silence Of The Lambs', director: 'Jonathan Demme', year:1991, genre: 'Thriller', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims."},
    {title:'The Blair Witch Project', director: 'Daniel Myrick', year:1999, genre: 'Found Footage', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BNzQ1NDBlNDItMDAyYS00YTI2LTgwMmYtMzAwMzg4NDFlM2ZmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Three film students vanish after traveling into a Maryland forest to film a documentary on the local Blair Witch legend, leaving only their footage behind."},
    {title:'The Baby', director:'Ted Post', year:1973, genre:'Mystery Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMDVjNjBjODktMDVjYi00NmJhLWI3ZWYtMjRmMWRlYWZhMGJjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR2,0,182,268_AL_.jpg',synopsis:"A social worker, still reeling from the loss of her architect husband, investigates the eccentric, psychedelic Wadsworth Family, consisting of a mother, two daughters, and an adult son with the apparent mental capacity of an infant."},
    {title:"Willy's Wonderland", director: 'Kevin Lewis', year:2021, genre: 'Comedy Horror', scream_factor:1, image: 'https://m.media-amazon.com/images/M/MV5BOTc3ZjVkYTYtMDZiMC00OTliLWE3OTEtYjY5NTBmNGJjYTBmXkEyXkFqcGdeQXVyNDExMzMxNjE@._V1_UY268_CR0,0,182,268_AL_.jpg', synopsis: "A quiet drifter is tricked into a janitorial job at the now condemned Wally's Wonderland. The mundane tasks suddenly become an all-out fight for survival against wave after wave of demonic animatronics. Fists fly, kicks land, titans clash -- and only one side will make it out alive."},
    {title:'Wrong Turn', director: 'Mike P. Nelson', year:2021, genre: 'Thriller', scream_factor:2, image: 'https://m.media-amazon.com/images/M/MV5BM2Y5ZWE2MTMtODE3ZC00NWQ4LWJkNzctNGY4Njg5NDY5MzNlXkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "Friends hiking the Appalachian Trail are confronted by 'The Foundation', a community of people who have lived in the mountains for hundreds of years."},
    {title:'Get Out', director: 'Jordan Peele', year:2017, genre: 'Psychological Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point."},
    {title:'The Witch', director: 'Robert Eggers', year:2015, genre: 'Mystery Horror', scream_factor:3, image: 'https://m.media-amazon.com/images/M/MV5BMTUyNzkwMzAxOF5BMl5BanBnXkFtZTgwMzc1OTk1NjE@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A family in 1630s New England is torn apart by the forces of witchcraft, black magic, and possession."},
    {title:'The Invisible Man', director: 'Leigh Whannell', year:2020, genre: 'Mystery Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BZjFhM2I4ZDYtZWMwNC00NTYzLWE3MDgtNjgxYmM3ZWMxYmVmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "When Cecilia's abusive ex takes his own life and leaves her his fortune, she suspects his death was a hoax. As a series of coincidences turn lethal, Cecilia works to prove that she is being hunted by someone nobody can see."},
    {title:'Hereditary', director: 'Ari Aster', year:2018, genre: 'Mystery Horror', scream_factor:3, image: 'https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "A grieving family is haunted by tragic and disturbing occurrences."},
    {title:'Alien', director: 'Ridley Scott', year:1979, genre: 'Monster Horror', scream_factor:4, image: 'https://m.media-amazon.com/images/M/MV5BMmQ2MmU3NzktZjAxOC00ZDZhLTk4YzEtMDMyMzcxY2IwMDAyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis: "After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun."},
    {title:'It Follows', director:'David Robert Mitchell',year:2014,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMmU0MjBlYzYtZWY0MC00MjliLWI3ZmUtMzhlZDVjMWVmYWY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A young woman is followed by an unknown supernatural force after a sexual encounter."},
    {title:'The Babadook', director:'Jennifer Kent',year:2014,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMTk0NzMzODc2NF5BMl5BanBnXkFtZTgwOTYzNTM1MzE@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A single mother and her child fall into a deep well of paranoia when an eerie children's book titled 'Mister Babadook' manifests in their home."},
    {title:'Sinister', director:'Scott Derrickson',year:2012,genre:'Mystery Horror',scream_factor:5,image:'https://m.media-amazon.com/images/M/MV5BMjI5MTg1Njg0Ml5BMl5BanBnXkFtZTcwNzg2Mjc4Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"Washed-up true crime writer Ellison Oswalt finds a box of super 8 home movies in his new home that suggest the murder that he is currently researching is the work of a serial killer whose work dates back to the 1960s."},
    {title:'Sinister 2', director:'Ciarán Foy',year:2015,genre:'Mystery Horror',scream_factor:3,image:'https://m.media-amazon.com/images/M/MV5BMjM3MTQ5NjA0OV5BMl5BanBnXkFtZTgwMzg2OTYyNTE@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A young mother and her twin sons move into a rural house that's marked for death."},
    {title:'Paranormal Activity', director:'Oren Peli',year:2007,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMjY1NjcxODQ4MV5BMl5BanBnXkFtZTcwMzUxNjM4Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"After moving into a suburban home, a couple becomes increasingly disturbed by a nightly demonic presence."},
    {title:'The Purge', director:'James DeMonaco',year:2013,genre:'Thriller',scream_factor:3,image:'https://m.media-amazon.com/images/M/MV5BMTQzNTcwODEyM15BMl5BanBnXkFtZTcwMjM1MDI0OQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A wealthy family is held hostage for harboring the target of a murderous syndicate during the Purge, a 12-hour period in which any and all crime is legal."},
    {title:'The Purge: Anarchy', director:'James DeMonaco',year:2014,genre:'Action Horror',scream_factor:3,image:'https://m.media-amazon.com/images/M/MV5BMjE2ODMxMTk1Nl5BMl5BanBnXkFtZTgwMDEzNjEzMTE@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"Three groups of people intertwine and are left stranded in the streets on Purge Night, trying to survive the chaos and violence that occurs."},
    {title:'The Conjuring', director:'James Wan',year:2013,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse."},
    {title:'It', director:'Andy Muschietti',year:2017,genre:'Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BZDVkZmI0YzAtNzdjYi00ZjhhLWE1ODEtMWMzMWMzNDA0NmQ4XkEyXkFqcGdeQXVyNzYzODM3Mzg@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"In the summer of 1989, a group of bullied kids band together to destroy a shape-shifting monster, which disguises itself as a clown and preys on the children of Derry, their small Maine town."},
    {title:'The Nun', director:'Corin Hardy',year:2018,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMjM3NzQ5NDcxOF5BMl5BanBnXkFtZTgwNzM4MTQ5NTM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A priest with a haunted past and a novice on the threshold of her final vows are sent by the Vatican to investigate the death of a young nun in Romania and confront a malevolent force in the form of a demonic nun."},
    {title:'Annabelle', director:'John R. Leonetti',year:2014,genre:'Mystery Horror',scream_factor:5,image:'https://m.media-amazon.com/images/M/MV5BOTQwZmQyYzEtODk5ZC00OTY3LWExMjAtYzRjNWFhNGM3MzBlXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A couple begins to experience terrifying supernatural occurrences involving a vintage doll shortly after their home is invaded by satanic cultists."},
    {title:'Insidious', director:'James Wan',year:2010,genre:'Mystery Horror',scream_factor:4,image:'https://m.media-amazon.com/images/M/MV5BMTYyOTAxMDA0OF5BMl5BanBnXkFtZTcwNzgwNTc1NA@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"A family looks to prevent evil spirits from trapping their comatose child in a realm called The Further."},
    {title:'A Nightmare On Elm Street', director:'Wes Craven',year:1984,genre:'Horror',scream_factor:5,image:'https://m.media-amazon.com/images/M/MV5BNzFjZmM1ODgtMDBkMS00NWFlLTg2YmUtZjc3ZTgxMjE1OTI2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg', synopsis:"The monstrous spirit of a slain child murderer seeks revenge by invading the dreams of teenagers whose parents were responsible for his untimely death."},
    {title:'Friday the 13th', director:'Marcus Nispel',year:2009,genre:'Slasher Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMTQ5ODI5NTMzN15BMl5BanBnXkFtZTcwNzY4MTYxMg@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A group of young adults visit a boarded up campsite named Crystal Lake where they soon encounter the mysterious Jason Voorhees and his deadly intentions."},
    {title:'Friday the 13th', director:'Sean S. Cunningham',year:1980,genre:'Slasher Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BNWMxYTYzYWQtNGZmNy00MTg5LTk1N2MtNzQ5NjQxYjQ5NTJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A group of camp counselors are stalked and murdered by an unknown assailant while trying to reopen a summer camp which was the site of a child's drowning and a grisly double murder years before."},
    {title:'Devil', director:'John Erick Dowdle',year:2010,genre:'Mystery Horror',scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BZDVmZGExMTEtNjk5OS00MTFkLWI0ZDMtNzg4YWFmNGY3NjRkXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A group of people are trapped in an elevator and the Devil is mysteriously amongst them."},
    {title:'As Above, So Below', director:'John Erick Dowdle',year:2014,genre:'Mystery Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMTQzNzg0NDI2MF5BMl5BanBnXkFtZTgwMzgxNzY2MTE@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"When a team of explorers ventures into the catacombs that lie beneath the streets of Paris, they uncover the dark secret that lies within this city of the dead."},
    {title:'Creep', director:'Patrick Brice',year:2014,genre:'Thriller',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMTY0NTU2ODM5Ml5BMl5BanBnXkFtZTgwMTAwOTA5NTE@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A young videographer answers an online ad for a one-day job in a remote town to record the last messages of a dying man. When he notices the man's odd behavior, he starts to question his intentions."},
    {title:'Cloverfield', director:'Matt Reeves',year:2008,genre:'Sci-fi Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BZDNhNDJlNDktZDI4OC00OTE3LWI2M2UtOThkNTFkNjBjYzRmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A group of friends venture deep into the streets of New York on a rescue mission during a rampaging monster attack."},
    {title:'28 Days Later', director:'Danny Boyle',year:2002,genre:'Sci-fi Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary."},
    {title:'28 Weeks Later', director:'Juan Carlos Fresnadillo',year:2007,genre:'Sci-fi Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BMjA5NjE2NDI0OF5BMl5BanBnXkFtZTgwNzU0NzQyMTI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Six months after the rage virus was inflicted on the population of Great Britain, the US Army helps to secure a small area of London for the survivors to repopulate and start again. But not everything goes according to plan."},
    {title:'Misery', director:'Bob Reiner',year:1990,genre:'Thriller',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BNzY0ODQ3MTMxN15BMl5BanBnXkFtZTgwMDkwNTg4NjE@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"After a famous author is rescued from a car crash by a fan of his novels, he comes to realize that the care he is receiving is only the beginning of a nightmare of captivity and abuse."},
    {title:'The Mist', director:'Frank Darabont',year:2007,genre:'Sci-fi Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMTU2NjQyNDY1Ml5BMl5BanBnXkFtZTcwMTk1MDU1MQ@@._V1_UY268_CR0,0,182,268_AL_.jpg',synopsis:"A freak storm unleashes a species of bloodthirsty creatures on a small town, where a small band of citizens hole up in a supermarket and fight for their lives."},
    {title:'Pet Sematary', director:'Mary Lambert',year:1989,genre:'Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BYjBlNTBhYWQtMzg5Yi00NDA2LWJmMjYtZmM0ODhiYzkwYmY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"After tragedy strikes, a grieving father discovers an ancient burial ground behind his home with the power to raise the dead."},
    {title:'Carrie', director:'Brian De Palma',year:1976,genre:'Horror',scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BMTlhNmVkZGUtNjdjOC00YWY3LTljZWQtMTY1YWFhNGYwNDQwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Carrie White, a shy, friendless teenage girl who is sheltered by her domineering, religious mother, unleashes her telekinetic powers after being humiliated by her classmates at her senior prom."},
    {title:'The Exorcist', director:'William Friedkin', year:1973, genre:'Horror',scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BYjhmMGMxZDYtMTkyNy00YWVmLTgyYmUtYTU3ZjcwNTBjN2I1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her."},
    {title:'The Omen', director:'Richard Donner', year:1976, genre:'Horror',scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BZmNjZDcwNTMtMjQxMy00ZTY5LTg4M2YtYjA5NDliNjNhYzQ3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Mysterious deaths surround an American ambassador. Could the child that he is raising actually be the Antichrist? The Devil's own son?"},
    {title:'Halloween', director:'John Carpenter', year:1978, genre:'Slasher Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BNzk1OGU2NmMtNTdhZC00NjdlLWE5YTMtZTQ0MGExZTQzOGQyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again."},
    {title:'The Texas Chainsaw Massacre', director:'Tobe Hooper', year:1974, genre:'Slasher Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BZDI3OWE0ZWMtNGJjOS00N2E4LWFiOTAtZjQ4OTNiNzIwN2NkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Two siblings and three of their friends en route to visit their grandfather's grave in Texas fall victim to a family of cannibalistic psychopaths."},
    {title:'Psycho', director:'Alfred Hitchcock', year:1960, genre:'Mystery Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A Phoenix secretary embezzles $40,000 from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother."},
    {title:'Psycho', director:'Gus Van Sant', year:1998, genre:'Mystery Horror',scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BNjQwMDczMmUtYjgzYy00NGRmLWFmMWEtNWVjMjgwNWVlMjlkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg',synopsis:"A young female embezzler arrives at the Bates Motel, which has terrible secrets of its own."},
    {title:'The Birds', director:'Alfred Hitchcock', year:1963, genre:'Mystery Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BMTAxNDA1ODc5MDleQTJeQWpwZ15BbWU4MDg2MDA4OTEx._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people."},
    {title:'The Human Centipede(First Sequence)', director:'Tom Six', year:2009, genre:'Horror',scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BMTY4Nzk3NzYxOF5BMl5BanBnXkFtZTcwODQwNjQzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A mad scientist kidnaps and mutilates a trio of tourists in order to reassemble them into a human centipede, created by stitching their mouths to each others' rectums."},
    {title:'Possessor', director:'Brandon Cronenberg', year:2020, genre:'Horror',scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BMjBlYTlhMDctNTQ3ZC00MjM4LWIxNjctNDI4NjA3NDc3Yzc5XkEyXkFqcGdeQXVyMTEyMjM2NDc2._V1_UY268_CR1,0,182,268_AL_.jpg',synopsis:"Possessor follows an agent who works for a secretive organization that uses brain-implant technology to inhabit other people's bodies - ultimately driving them to commit assassinations for high-paying clients."},
    {title:'Relic', director:'Natalie Erika James', year:2020, genre:'Mystery Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BOGY1MGM2ZjItZDJjMC00ZGM0LTg2MDctNmExNzcyYTcwMjM3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A daughter, mother and grandmother are haunted by a manifestation of dementia that consumes their family's home."},
    {title:'Three...Extremes', director:'Fruit Chan', year:2004, genre:'Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BNzM5MTM2OTgzOF5BMl5BanBnXkFtZTcwNzc4NTUzMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"An Asian cross-cultural trilogy of horror films from accomplished indie directors."},
    {title:'Saint Maud', director:'Rose Glass', year:2019, genre:'Mystery Horror',scream_factor:2, image:'https://m.media-amazon.com/images/M/MV5BYzE3ZDg0OTktYjlhNC00ZmQ0LTk0YjktMDE1ZWE2YjIwMjk4XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Follows a pious nurse who becomes dangerously obsessed with saving the soul of her dying patient."},
    {title:'His House', director:'Remi Weekes', year:2020, genre:'Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BODY2NjQzYzYtYTgyMy00M2MxLTgyMWQtZTU1NWZjZWU4ZDc3XkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A refugee couple makes a harrowing escape from war-torn South Sudan, but then they struggle to adjust to their new life in an English town that has an evil lurking beneath the surface."},
    {title:'The Ring', director:'Gore Verbinski', year:2002, genre:'Mystery Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BNDA2NTg2NjE4Ml5BMl5BanBnXkFtZTYwMjYxMDg5._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A journalist must investigate a mysterious videotape which seems to cause the death of anyone one week to the day after they view it."},
    {title:'Saw', director:'James Wan', year:2004, genre:'Mystery Horror',scream_factor:3, image:'https://m.media-amazon.com/images/M/MV5BMzQ2ZTBhNmEtZDBmYi00ODU0LTgzZmQtNmMxM2M4NzM1ZjE4XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Two strangers awaken in a room with no recollection of how they got there, and soon discover they're pawns in a deadly game perpetrated by a notorious serial killer."},
    {title:'Saw 2', director:'Darren Lynn Bousman', year:2005, genre:'Mystery Horror',scream_factor:4, image:'https://m.media-amazon.com/images/M/MV5BMjY4Mjg4YTgtZWU2MC00MzVlLTg3MDgtYzUyYzU1NGMyMmU5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"A detective and his team must rescue 8 people trapped in a factory by the twisted serial killer known as Jigsaw."},
    {title:'The Amityville Horror', director:'Stuart Rosenberg', year:1979, genre:'Horror',scream_factor:5, image:'https://m.media-amazon.com/images/M/MV5BMTc0NDMyNTU3M15BMl5BanBnXkFtZTcwMjM0MTgwNA@@._V1_UX182_CR0,0,182,268_AL_.jpg',synopsis:"Newlyweds and their three kids move into a large house where a mass murder was committed. They start to experience strange, inexplicable manifestations which have strong effects on everyone living or visiting the house."}
   
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

