//
//  GymView.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/11/25.
//

import SwiftUI

struct GymView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer()
                DashboardCardComponent(title: "Rep Calculator", destination: RepCalculatorView())
                DashboardCardComponent(title: "Workout Tracker", destination: RepCalculatorView())
            }
            HStack{
                Spacer()
                DashboardCardComponent(title: "Weight Conversion Calculator", destination: RepCalculatorView())
                DashboardCardComponent(title: "Other", destination: RepCalculatorView())
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}
