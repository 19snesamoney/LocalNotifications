//
//  ViewController.swift
//  LocalNotifications
//
//  Created by Sophia Nesamoney on 2/27/18.
//  Copyright © 2018 Sophia Nesamoney. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    //var year = 2018
   // var month = 09
   //var day = 05
   // var hour = 09
    //var minute = 41
   // var second = 03

    @IBAction func StartNotification(_ sender: Any) {
        let content = UNMutableNotificationContent()
        content.title = "Meeting Reminder"
        content.body = "Please go to the library for your meeting at 3:00pm"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        //let date = Date(timeIntervalSinceNow: 3600)
       // let triggerDate = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
       // let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: false)
        
        let request = UNNotificationRequest(identifier: "timerDone", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)


    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
            
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

