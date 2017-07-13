//
//  ViewController.swift
//  dejavi
//
//  Created by dimitri frazao on 6/29/17.
//  Copyright © 2017 none. All rights reserved.
//
import Foundation
import Alamofire
import SwiftyJSON

class APICalls : APIContract{
    
    var basePath : String = "http://www.omdbapi.com/?apikey=ec6483bd"
    var newModel = MovieModel()
    private var data: JSON?
    
    func loadResponse(data: JSON) {
        self.data = data
    }
    
    
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
}