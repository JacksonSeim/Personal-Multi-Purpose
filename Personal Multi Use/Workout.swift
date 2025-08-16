//
//  Workout.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/12/25.
//

import Foundation

struct Workout: Codable {
    var Title: String
    var DATE: Date
    var Exercises: [Exercise]
    var Notes: String?
    var WasSkipped: Bool = false
}
