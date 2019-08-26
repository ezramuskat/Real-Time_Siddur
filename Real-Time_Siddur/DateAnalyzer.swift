//
//  DateAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/20/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

/// Creates an object to convert the hebrew date into usable, human-readable pieces
class DateAnalyzer {
    let hebrewCalender: Calendar = Calendar(identifier: .hebrew) //creates an instance of the Hebrew calender //holds an instance of the Hebrew calender
    let leapYearPositions: [Int] = [3, 6, 8, 11, 14, 17, 19] //holds a list of leap year positions in the Metonic cycle; for more information, see https://en.m.wikipedia.org/wiki/Hebrew_calendar#Leap_years
    let monthDict: [Int: String] = [1: "Tishrei", 2: "Cheshvan", 3: "Kislev", 4: "Tevet", 5: "Shevat", 6: "Adar", 7: "Nissan", 8: "Iyar", 9: "Sivan", 10 : "Tammuz", 11: "Av", 12: "Elul"] //matches each month code to its month in string format
    let monthDictLY: [Int: String] = [1: "Tishrei", 2: "Cheshvan", 3: "Kislev", 4: "Tevet", 5: "Shevat", 6: "Adar Aleph", 7: "Adar Bet", 8: "Nissan", 9: "Iyar", 10 : "Sivan", 11: "Tammuz", 12: "Av", 13: "Elul"] //same as monthDict, but for leap years
    let errorMessage = "Whoops! Looks like something went wrong here; please send a bug report to the app developer"
    
    var today: Date //holds an instance of today's date
    
    
    init() {
         today = Date() //captures today's date in an instance
    }
    
    /// Determines if the current year is a leap year based on the Metonic cycle
    ///
    /// - Returns: true if it is a leap year, otherwise returns false
    func isLeapYear() -> Bool {
        if leapYearPositions.contains(hebrewCalender.component(.year, from: today) % 19) {
            return true
        }
        return false
    }
    
    /// Matches Apple's numeric month calender component to the name of the current month
    ///
    /// - Returns: The current hebrew month in a user-readable format
    func month() -> String {
        let key: Int = hebrewCalender.component(.month, from: today)
        if self.isLeapYear() {
            guard let month = monthDictLY[key] else { return errorMessage
            }
            return month
        } else {
            guard let month = monthDict[key] else { return errorMessage
            }
            return month
        }
    }
    
    func year() -> Int {
        return hebrewCalender.component(.year, from: today)
    }
    
    func day() -> Int {
        return hebrewCalender.component(.day, from: today)
    }
}
