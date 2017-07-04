
import UIKit

class MovieModel {
    var title, year, poster, type, imdbId: String
    
    struct rating {
        var source, value: String?
    }
    
    struct movieDescription {
        var rated, runtime, genre, plot, awards: String
        var ratings : [rating] = []
    }
    
    init(title: String, year: String, poster: String, type: String, imdbId: String) {
        self.title = title
        self.year = year
        self.poster = poster
        self.type = type
        self.imdbId = imdbId
    }
    
}