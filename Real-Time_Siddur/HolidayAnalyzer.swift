//
//  HolidayAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/14/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation


/// Holds relevant holiday information about the day
class HolidayAnalyzer {
    let holidayMonths: [Month] = [.Tishrei, .Kislev, .Tevet, .Adar, .Adar_Bet, .Nissan]
    let daysOfSukkot: [Int] = [15,16,17,18,19,20,21,22]
    let daysOfHannukahKislev: [Int] = [25,26,27,28,29,30]
    
    let month: Month
    let day: Int
    
    init(month: Month, day: Int) {
        self.month = month
        self.day = day
    }
    
    func isHoliday() -> Bool {
        if holidayMonths.contains(self.month) {
            switch self.month {
            case .Tishrei:
                if daysOfSukkot.contains(self.day) {
                    return true
                } else {
                    return false
                }
            case .Kislev:
                if daysOfHannukahKislev.contains(self.day) {
                    return true
                } else {
                    return false
                }
            default:
                return false
            }
        }
        return false
    }
    
    
    
}
