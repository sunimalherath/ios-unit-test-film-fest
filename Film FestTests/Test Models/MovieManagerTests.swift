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
        let testMovie = Movie(title: "Batman Begins")
        sut.addMovie(movie: testMovie)
        
        XCTAssertEqual(sut.moviesToSeeCount, 1)
    }
    
    func testQuery_ReturnsMovieAtIndex() {
        let testMovie = Movie(title: "Terminator 2")
        sut.addMovie(movie: testMovie)
        
        let movieQueried = sut.movieAtIndex(index: 0)
        XCTAssertEqual(testMovie.title, movieQueried.title)
    }
    
    // MARK: checking off
    
    func testCheckOffMovie_UpdatesMovieMangerCounts() {
        sut.addMovie(movie: Movie(title: "LEGO Batman"))
        sut.checkOffMovieAtIndex(index: 0)
        
        XCTAssertEqual(sut.moviesToSeeCount, 0)
        XCTAssertEqual(sut.moviesSeenCount, 1)
    }
}
