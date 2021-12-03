//
//  NotifiactionView.swift
//  TestCalendar
//
//  Created by Elliot knight on 03/12/2021.
//

import SwiftUI

struct NotificationView: View {
    
    var magicalMysteryView = MagicalMysteryView()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 60){
                Section {
                    // First button
                    Button("Request permission") {
                        notificationManager.instance.requestAuthorization()
                    }
                    // Second button
                    Button("Schedule a notification") {
                        notificationManager.instance.scheduledNotification()
                    }
                    //Magic Button
                    NavigationLink(destination: MagicalMysteryView()) {
                                Text("Magical Mystery Button")
                             }.buttonStyle(PlainButtonStyle())
                   
                }.padding()
                    .background(Color.blue)
                    .font(.title)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                
            }
            .onAppear {
                UIApplication.shared.applicationIconBadgeNumber = 0
            }.navigationTitle("Notifications")
        }
    }
}


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
