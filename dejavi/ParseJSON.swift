//
//  ParseJSON.swift
//  dejavi
//
//  Created by dimitri frazao on 7/10/17.
//  Copyright © 2017 none. All rights reserved.
//

import Foundation
import SwiftyJSON

func parseJSON (json : String) -> JSON {
    print("o que veio no parse \(json)")
    return JSON(json)
}