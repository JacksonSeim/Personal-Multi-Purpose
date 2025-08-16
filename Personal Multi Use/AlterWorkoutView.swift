//
//  AlterWorkoutView.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/16/25.
//
// - alter -> see all workout titles along with their respective week day (sorted day after restday -> last day before rest day
// - alter -> drop down to switch which week day belongs with which workout (can't submit until only 1 or 0 workouts on each day)
// - alter -> clickable workout title to go and edit that workout
// - alter - alter workout -> 4 editable things per exercise line. (order, Name, sets, rep range * should give common options and ability to create new for all *)
import SwiftUI

public struct AlterWorkoutView: View {
    public var body: some View {
        var workoutData: [Workout]? = loadWorkoutData()
        
        VStack {
            if (workoutData != nil){
                ForEach(workoutData!, id:\.DATE) {workout in
                    AlterWorkoutDayComponent(workout: workout)
                }
            }
            else {
                Text("Error loading workout data")
            }
        }
        // render workout
    }
    func loadWorkoutData() -> [Workout]? {
        var workoutData: [Workout]? = nil
        guard let fileUrl = Bundle.main.url(forResource: "WorkoutTemplateData", withExtension: "json") else {
            fatalError("Error trying to find JSON file")
        }
        do {
            let jsonData = try Data(contentsOf: fileUrl)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            workoutData = try decoder.decode([Workout].self, from: jsonData)
        }
        catch {
            print("Error trying to decode Json file")
        }
        return workoutData
    }
}
