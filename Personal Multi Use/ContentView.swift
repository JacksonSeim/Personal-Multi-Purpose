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
                    NavigationLink(destination: GymView()) {
                        Text("Gym")
                            .frame(width: 120, height: 120)
                            .background(Color.gray)
                            .foregroundColor(Color.white)
                            .cornerRadius(25)
                    }
                    Spacer(minLength: 60)
                    Button ("Other") {
                        
                    }
                    .frame(width: 120, height: 120)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .cornerRadius(25)
                    Spacer()
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
