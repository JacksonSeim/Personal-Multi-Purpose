//
//  ContentView.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer().frame(height: 50)
                HStack{
                    Spacer()
                    DashboardCardComponent(title: "Gym", destination: GymView())
                    DashboardCardComponent(title: "Other", destination: GymView())
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
            
    }
}

#Preview {
    ContentView()
}
