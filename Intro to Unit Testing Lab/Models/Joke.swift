//
//  Jokes.swift
//  Intro to Unit Testing Lab
//
//  Created by Jason Ruan on 8/29/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import Foundation

struct Joke: Codable {
    
    
    static func getJokeFromData(from data: Data) -> Joke {
        do {
            let jokeFunny = try JSONDecoder().decode(Joke.self, from: data)
            return jokeFunny
        } catch let decodeError {
            fatalError("Could not decode data: \(decodeError)")
        }
    }
}
