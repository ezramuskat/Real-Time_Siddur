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
    let monthDict: [Int: Month] = [1: Month.Tishrei, 2: Month.Cheshvan, 3: Month.Kislev, 4: Month.Tevet, 5: Month.Shevat, 6: Month.Adar, 7: Month.Nissan, 8: Month.Iyar, 9: Month.Sivan, 10 : Month.Tammuz, 11: Month.Av, 12: Month.Elul] //matches each month code to its month
    let monthDictLY: [Int: Month] = [1: Month.Tishrei, 2: Month.Cheshvan, 3: Month.Kislev, 4: Month.Tevet, 5: Month.Shevat, 6: Month.Adar_Aleph, 7: Month.Adar_Bet, 8: Month.Nissan, 9: Month.Iyar, 10: Month.Sivan, 11 : Month.Tammuz, 12: Month.Av, 13: Month.Elul]  //same as monthDict, but for eap years
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
    
    func holiday() -> Holiday {
        let holidayStatus = HolidayAnalyzer(month: internalMonth(), day: day())
        if holidayStatus.isHoliday() {
            
        }
        return .None
    }
    /// Matches Apple's numeric month calender component to the name of the current month
    ///
    /// - Returns: The current hebrew month in a user-readable format
    func month() throws -> String {
        let key: Int = hebrewCalender.component(.month, from: today)
        if self.isLeapYear() {
            guard let month = monthDictLY[key] else { throw Errors.stdError(message: errorMessage)
            }
            return month.get()
        } else {
            guard let month = monthDict[key] else { throw Errors.stdError(message: errorMessage)
            }
            return month.get()
        }
    }
    
    /// Matches Apple's numeric month calender component to date regarding the current month
    /// Designed for interaction with other classes that need more information
    ///
    /// - Returns: The current hebrew month and associated information i
    private func internalMonth() -> Month {
        let key: Int = hebrewCalender.component(.month, from: today)
        if self.isLeapYear() {
            guard let month = monthDictLY[key] else { return Month.MonthNotFound
            }
            return month
        } else {
            guard let month = monthDict[key] else { return Month.MonthNotFound
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
