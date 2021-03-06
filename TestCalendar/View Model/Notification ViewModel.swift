//
//  Notification ViewModel.swift
//  TestCalendar
//
//  Created by Elliot knight on 03/12/2021.
//

import Foundation

import UserNotifications

class notificationManager {
    
    static let instance = notificationManager() // Singleton
    // Demande l'autorisation d'envoyer des notifications
    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { succes, error in
            if let error = error {
                print("ERROR \(error)")
            }else {
                print("SUCCES")
            }
        }
        
    }
    //Scheduled notification in time, second tto calendar and trigger.
    func scheduledNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification"
        content.subtitle = "This was so dope"
        content.sound = .default
        content.badge = 1
        
        
        
        
        // Time
        // let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)
        // 5 seconds before scheduling the request
        
        // Calendar
        var dateComponents = DateComponents()
        
        dateComponents.hour = 16
        dateComponents.minute = 44
        dateComponents.weekday = 6 // Friday number 6, monday is number two
        // This writing saying every Fryday at 9.27 am I'm notifying the user
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        
        //Notification Request
        let request = UNNotificationRequest(identifier: UUID().uuidString,
                                            content: content,
                                            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    // URSSAF trimstriel
    func scheduledNotificationUrssafQuarterly() {
        let content = UNMutableNotificationContent()
        content.title = "This is my Urssaf notification"
        content.subtitle = "I don't want pay for it "
        content.sound = .default
        content.badge = 1
        
        var dateComponents = DateComponents()
        
        dateComponents.hour = 16
        dateComponents.minute = 44
        dateComponents.weekday = 6 // Friday number 6, monday is number two
        dateComponents.month = 12 % 4 // For quarterly notification
        
        // Ce qui lance la notification ?? une date, heure, pr??cise
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        //Notification Request
        let request = UNNotificationRequest(identifier: UUID().uuidString,
                                            content: content,
                                            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    // CFE annuellement
    func scheduledNotificationCfe() {
        
        // Content of my notification
        let content = UNMutableNotificationContent()
        content.title = "Hey ! Il faut que tu fasses ta d??caration CFE ????"
        content.subtitle = "Tu as jusqu'au 15 d??cembre ! "
        content.sound = .default
        content.badge = 1
        
        
        // dateComponents asked in the trigger for choose when notifying.
        var dateComponents = DateComponents()
        dateComponents.hour = 14
        dateComponents.minute = 04
        dateComponents.weekday = 2 // Friday number 6, monday is number two
        dateComponents.month = 10 // For quarterly notification
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        //Notification Request
        let request = UNNotificationRequest(identifier: UUID().uuidString,
                                            content: content,
                                            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
}
