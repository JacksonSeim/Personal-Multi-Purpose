//
//  AlterWorkoutDayComponent.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/16/25.
//

import SwiftUI
import Foundation

public struct AlterWorkoutDayComponent: View {
    let workout: Workout
    @State private var isExpanded: Bool = false
    @State private var selectedOption: Date = workout.DATE // fix all dates to just be weekdays
    public var body: some View {
        VStack{
            // week day drop down
            Text(workout.Title)
        }
    }
}
