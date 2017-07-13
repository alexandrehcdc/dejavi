
import Foundation
import Realm

class MovieModel {
    dynamic var title, year, poster, type, imdbId: String?
    
    struct movieDescription {
        var rated, runtime, genre, plot, awards, director: String
        var ratings : [NSData] = []
    }
    
    init(title: String, year: String, poster: String, type: String, imdbId: String) {
        self.title = title
        self.year = year
        self.poster = poster
        self.type = type
        self.imdbId = imdbId
    }
    
    init () {
        
    }
}