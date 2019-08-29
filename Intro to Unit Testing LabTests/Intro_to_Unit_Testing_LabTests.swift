//
//  Intro_to_Unit_Testing_LabTests.swift
//  Intro to Unit Testing LabTests
//
//  Created by Jason Ruan on 8/29/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import XCTest
@testable import Intro_to_Unit_Testing_Lab

class Intro_to_Unit_Testing_LabTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testForJokeBlob() {
        let data = getDataFromJSON(jsonFileName: "joke")
        let jokes = Joke.getJokesFromData(from: data)
        XCTAssertTrue(jokes[0].setup != nil && jokes[0].punchline != nil)
    }
    
    private func getDataFromJSON(jsonFileName: String) -> Data {
        guard let pathFromJokeJSON = Bundle.main.path(forResource: jsonFileName, ofType: "json") else { fatalError("Could not find a json file with that name") }
        let url = URL(fileURLWithPath: pathFromJokeJSON)
        do {
            let data = try Data(contentsOf: url)
            return data
        } catch let jsonError {
            fatalError("Could not get data from url: \(jsonError)")
        }
    }
    
}
