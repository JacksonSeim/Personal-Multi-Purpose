//
//  DashboardCardComponent\.swift
//  Personal Multi Use
//
//  Created by Jackson Seim on 8/12/25.
//

import SwiftUI

struct DashboardCardComponent<Destination: View>: View {
    let title: String
    let destination: Destination
    var body: some View {
        NavigationLink(destination: destination) {
            Text("\(title)")
                .frame(width: 120, height: 120)
                .background(Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(25)
        }
        Spacer()
    }
}
