import Foundation

// Swift Type casting

// is 값의 타입을 확인하는데 사용

// as 값을 변환 시킬때 사용

class MediaItem{
    var name : String
    init(name: String){
        self.name = name
    }
}

class Movie : MediaItem{
    var director : String
    init(name : String, director : String){
        self.director = director
        super.init(name: name)
    }
}

class Song : MediaItem{
    var artist : String
    init(name : String, artist : String){
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "기생충", director: "봉준호"),
    Song(name: "Butter", artist: "BTS"),
    Movie(name: "올드보이", director: "박찬욱"),
    Song(name: "Wonderwall", artist: "Oasis"),
    Song(name: "Rain", artist: "이적")
]

var movieCount = 0
var songCount = 0

// is 활용
for item in library {
    if item is Movie{
        movieCount += 1
    }else if item is Song{
        songCount += 1
    }
}

print("Media library contains \(movieCount) movies and \(songCount) songs")


// as 활용 ? -> 옵셔널 객체 // ! -> 보증 객체로 반드시 성공할 거라는 확신이 있을때만 사용.
for item in library{
    if let movie = item as? Movie{
        print("Movie: \(movie.name), dir. \(movie.director)")
    }else if let song = item as? Song{
        print("Song: \(song.name), by \(song.artist)")
    }
}

