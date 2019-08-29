//
//  Jokes.swift
//  Intro to Unit Testing Lab
//
//  Created by Jason Ruan on 8/29/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import Foundation

struct Joke: Codable {
    var setup: String
    var punchline: String
    
    static func getJokesFromData(from data: Data) -> [Joke] {
        do {
            let jokes = try JSONDecoder().decode([Joke].self, from: data)
            return jokes
        } catch let decodeError {
            fatalError("Could not decode data: \(decodeError)")
        }
    }
}
