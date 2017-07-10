
import Foundation
import Alamofire

class APICalls {
    var basePath : String = "http://www.omdbapi.com/?apikey=ec6483bd"
    var newModel = MovieModel()
    
    func callAPI (paramsToBeSearched: String, _ typeOfOperation: String) -> NSData? {
        guard !paramsToBeSearched.isEmpty && !typeOfOperation.isEmpty else {
            return nil
        }
        let requestPath : String = "\(basePath)\(typeOfOperation)\(paramsToBeSearched)"
        var teste : NSData?
        Alamofire.request(.GET, requestPath)
            .responseString { _, _, result in
                print("Success: \(result.isSuccess)")
                print("Response String: \(result.value)")
                teste = result.data
        }
        return teste
    }
    
    func getByTitle (titleToBeSearched: String) {
        print(callAPI(titleToBeSearched, "&t="))
    }
    
    func getBySearch (titleToBeSearched: String) {
        print(callAPI(titleToBeSearched, "&s="))
    }
}