//
//  File.swift
//  Alarm
//
//  Created by Tyler on 5/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation


class AlarmController {
    
    static let sharedController = AlarmController()
    
    
    var alarms: [Alarm] = []
    
    // CRUD
    
    init() {
        alarms = mockAlarms
    }
    
    var mockAlarms: [Alarm] {
        let wakeUpAlarm = Alarm(fireTimeFromMidnight: 0700, name: "Wake Up")
        let goToSleep = Alarm(fireTimeFromMidnight: 2200, name: "Go to sleep")
        let eatLunch = Alarm(fireTimeFromMidnight: 1230, name: "Lunch Time")
        return [wakeUpAlarm, goToSleep, eatLunch]
        
    }
    
    
    func addAlarm(fireFromMidnight: NSTimeInterval, name: String) -> Alarm {
        let alarm = Alarm(fireTimeFromMidnight: fireFromMidnight, name: name)
        alarms.append(alarm)
        return alarm
    }
    
    func updateAlarm(alarm: Alarm, fireTimeFromMidnight: NSTimeInterval, name: String) {
        alarm.fireTimeFromMidnight = fireTimeFromMidnight
        alarm.name = name
        
    }
    
    func deleteAlarm(alarm: Alarm) {
        if let indexOfAlarm = alarms.indexOf(alarm) {
            alarms.removeAtIndex(indexOfAlarm)
        }
    }
    
    func toggleEnabled(alarm: Alarm) {
        
    }
}