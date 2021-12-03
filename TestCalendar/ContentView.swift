//
//  ContentView.swift
//  TestCalendar
//
//  Created by Elliot knight on 01/12/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            NotificationView()
                .tabItem {
                    Image(systemName: "minus")
                    Text("Notification autorisation")
            }
            ToggleView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("Active Urssaf notification")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
