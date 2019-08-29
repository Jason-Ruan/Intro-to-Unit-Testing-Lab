//
//  Trivia.swift
//  Intro to Unit Testing Lab
//
//  Created by Jason Ruan on 8/29/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import Foundation

struct Trivia: Codable {
    
    static func getTriviaFromData(from data: Data) -> [Trivia] {
        do {
            let triviaFacts = try JSONDecoder().decode([Trivia].self, from: data)
            return triviaFacts
        } catch let decodeError {
            fatalError("Could not decode data: \(decodeError)")
        }
    }
}
