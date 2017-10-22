//
//  User.swift
//  Genomality
//
//  Created by Tinh Dang on 10/21/17.
//  Copyright © 2017 Tinh Dang. All rights reserved.
//

import UIKit

class User {
    
    var name: String
    var phenoTypeScore: Int
    var matches: [NSDictionary]?
    
    init(name: String, phenoTypeScore: Int, matches: [NSDictionary]) {
        self.name = name
        self.phenoTypeScore = phenoTypeScore
        self.matches = matches
    }
    
}
