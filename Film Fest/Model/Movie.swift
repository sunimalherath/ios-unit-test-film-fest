//
//  Movie.swift
//  Film Fest
//
//  Created by Sunimal Herath on 15/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

struct Movie {
    var title: String
    var releaseDate: String?
    
    init(title: String, releaseDate: String? = nil) {
        self.title = title
        self.releaseDate = releaseDate
    }
}
