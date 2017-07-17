import Foundation
import RealmSwift

let realm = try! Realm()

class MovieModel: Object {
    
    dynamic var title, year, poster, genre, plot: String?
    dynamic var isAlreadyWatched: Bool = false
    dynamic var isAlreadySaved: Bool = false
    dynamic var imageData: NSData?
    
    func persistMovie(movie: Object) {
        try! realm!.write {
            realm!.add(movie)
        }
    }
    
    func removeMovie (movie: Object) {
        try! realm!.write {
            realm!.delete(movie)
        }
    }
    
    func setimageData (imageData : NSData?) {
        guard imageData != nil else {
            return
        }
        self.imageData = imageData
    }
    
    func setMovieValues (title: String, year: String, poster: String, genre: String, plot: String, isAlreadyWatched: Bool, isAlreadySaved: Bool) {
        self.title = title
        self.year = year
        self.poster = poster
        self.genre = genre
        self.plot = plot
        self.isAlreadyWatched = isAlreadyWatched
        self.isAlreadySaved = isAlreadySaved
    }
}