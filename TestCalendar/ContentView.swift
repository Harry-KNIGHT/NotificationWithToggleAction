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
                    Image(systemName: "airpods")
                    //Buy AirPod.
                    Text("Notification autorisation")
                }
            ToggleView()
                .tabItem {
                    Image(systemName: "bitcoinsign.circle")
                    //BuyBitcoins.
                    Text("Réglages")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
