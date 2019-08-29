//
//  Star Wars.swift
//  Intro to Unit Testing Lab
//
//  Created by Jason Ruan on 8/29/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import Foundation

struct StarWars: Codable {
    
    static func getStarWarsFromData(from data: Data) -> [StarWars] {
        do {
            let starWarsFilms = try JSONDecoder().decode([StarWars].self, from: data)
            return starWarsFilms
        } catch let decodeError {
            fatalError("Could not decode data: \(decodeError)")
        }
    }
}
