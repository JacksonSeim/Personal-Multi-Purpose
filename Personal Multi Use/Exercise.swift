//
//  Exercise.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/12/25.
//

struct Exercise {
    var Title: String
    var Sets: [ExerciseSet]
    var SameWeightForAllSets: Bool {
        get{
            let FirstSetWeight: Int = Sets[0].Weight
            for Set in Sets {
                if Set.Weight != FirstSetWeight {
                    return false
                }
            }
            return true
        }
    }
    var WasSkipped: Bool = false
}
