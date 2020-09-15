//
//  MovieManager.swift
//  Film Fest
//
//  Created by Sunimal Herath on 15/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import Foundation

class MovieManager {
    var moviesToSeeCount: Int = 0
    var moviesSeenCount: Int = 0
    
    var moviesToWatchArray = [Movie]()
    
    func addMovie(movie: Movie) {
        moviesToSeeCount += 1
        moviesToWatchArray.append(movie)
    }
    
    func movieAtIndex(index: Int) -> Movie {
        return moviesToWatchArray[index]
    }
    
    func checkOffMovieAtIndex(index: Int) {
        guard index < moviesToSeeCount else { return }
        moviesToSeeCount -= 1
        moviesSeenCount += 1
        
        moviesToWatchArray.remove(at: index)
    }
}
