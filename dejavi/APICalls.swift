import Foundation
import Alamofire
import SwiftyJSON

class APICalls {
    
    var basePath : String = "http://www.omdbapi.com/?apikey=ec6483bd"
    private var data: JSON?
    
    func callAPI (paramsToBeSearched: String, _ typeOfOperation: String, completion: (JSON) -> ()) {
        
        let requestPath : String = "\(basePath)\(typeOfOperation)\(paramsToBeSearched)"
        
        Alamofire.request(.GET, requestPath)
            .validate()
            .responseString { _, _, result in
                guard result.isSuccess else {
                    print(result.error)
                    return
                }
                
                completion(parseJSON(result.value!))
        }
    }
    
//    func resolveImage(pathToRequest: String) -> UIImage {
//        let url = NSURL(string: pathToRequest)
//        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
//        let task = session.dataTaskWithURL(url!, completionHandler: {data, response, error in
//            if let http = response as? NSHTTPURLResponse {
//                guard http.statusCode == 200 else {
//                    print("error: \(error)")
//                    return
//                }
//                    let downloadedImage = UIImage(data: data!)
//                    dispatch_async(dispatch_get_main_queue(), {
//                        return downloadedImage
//                    })
//            }
//        })
//        task.resume()
//    }
    // falta retorno
    
}