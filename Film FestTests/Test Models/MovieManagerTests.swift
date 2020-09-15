//
//  MovieManagerTests.swift
//  Film FestTests
//
//  Created by Sunimal Herath on 15/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import XCTest
@testable import Film_Fest

class MovieManagerTests: XCTestCase {
    
    var sut: MovieManager!
    
    let scifiMovie = Movie(title: "The Matrix")
    let actionMovie = Movie(title: "Batman Begins")
    let animatedMovie = Movie(title: "LEGO Batman")

    override func setUpWithError() throws {
        sut = MovieManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    // MARK: Inital values
    func testInit_MoviesToSee_ReturnsZero() {
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        
    }
    
    func testInit_MovieSeen_ReturnsZero() {
        XCTAssertEqual(sut.moviesSeenCount, 0)
    }
    
    // MARK: add & query
    
    func testAdd_MoviesToSee_ReturnsOne() {
        sut.addMovie(movie: actionMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnsMovieAtIndex() {
        let testMovie = scifiMovie
        sut.addMovie(movie: testMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(testMovie.title, movieQueried.title)
    }
    
    // MARK: checking off
    
    func testCheckOffMovie_UpdatesMovieMangerCounts() {
        sut.addMovie(movie: animatedMovie)
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
    
    func testCheckOffMovie_RemoveMovieFromArray() {
        sut.addMovie(movie: scifiMovie)
        sut.addMovie(movie: actionMovie)
        sut.addMovie(movie: animatedMovie)
        
        sut.checkOffMovieAtIndex(index: 0)
        XCTAssertEqual(sut.movieAtIndex(index: 0).title, actionMovie.title) // since the top movie removed, second movie should be the one at given index
    }
    
    
}
