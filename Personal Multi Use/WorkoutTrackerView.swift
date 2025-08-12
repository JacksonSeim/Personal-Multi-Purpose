//
//  WorkoutTrackerView.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/12/25.
//

import SwiftUI
import Foundation

struct WorkoutTrackerView: View {
    var body: some View {
        let CurrentDay: Date = Date()
        let DayOfTheWeek = Calendar.current.component(.weekday, from: CurrentDay)
        
        
    }
}

// Workflow
    // - Open the current day of the weeks workout
    // - Either take rep counting branch or the workout altering path
    // - alter -> see all workout titles along with their respective week day (sorted day after restday -> last day before rest day
    // - alter -> drop down to switch which week day belongs with which workout (can't submit until only 1 or 0 workouts on each day)
    // - alter -> clickable workout title to go and edit that workout
    // - alter - alter workout -> 4 editable things per exercise line. (order, Name, sets, rep range * should give common options and ability to create new for all *)
    // - tracking -> ability to switch the workout for that day to a different one of the set week or custom (if choose one of that week then should be able to alter it any way they want and automatically gets switched to custom)
    // - tracking -> simple obvious way to input the reps per set (auto fills the weight but ability to change it)
    // - tracking -> if out of expected rep range show yellow or red
    // - tracking -> if larger than 1.5x max rep range than show red and make sure it is correct
    // - tracking -> if anything left blank give are you sure prompt
    // - tracking -> at end give prompt for notes like skipped set cause felt bad or what not
    // - button to see the one rep max for each exercise in that workout
    // - eye peak button that flashes the best rep weight combo ever recorded
    // - stretch - tracking -> after submit show changable graph (exercise) that shows the progress over time
