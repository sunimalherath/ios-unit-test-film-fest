//
//  MovieStructTests.swift
//  Film FestTests
//
//  Created by Sunimal Herath on 15/9/20.
//  Copyright © 2020 Sunimal Herath. All rights reserved.
//

import XCTest
@testable import Film_Fest

class MovieStructTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInit_MovieWithTitle() {
        let testMovie = Movie(title: "The Matrix")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.title, "The Matrix")
    }
    
    func testInit_SetMovieTitleAndReleaseDate() {
        let testMovie = Movie(title: "Bourne Identity", releaseDate: "2001")
        
        XCTAssertNotNil(testMovie)
        XCTAssertEqual(testMovie.releaseDate, "2001")
    }

}
