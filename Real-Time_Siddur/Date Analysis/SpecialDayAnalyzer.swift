//
//  SpecialDayAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/19/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation


/// Determines whether
class SpecialDayAnalyzer {
    let holidayMonths: [Month] = [.Tishrei, .Kislev, .Tevet, .Adar, .Adar_Bet, .Nissan]
    let daysOfSukkot: [Int] = [15,16,17,18,19,20,21,22]
    let daysOfHannukahKislev: [Int] = [25,26,27,28,29,30]
    let daysOfHannukahTevet: [Int] = [1,2]
    
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
            case .Tevet:
                if daysOfHannukahTevet.contains(self.day) {
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
    
    func isFastDay() -> Bool {
        return false
    }
    
    func holiday() throws -> HolidayData {
        if isHoliday() {
            return HolidayAnalyzer(month: self.month, day: self.day).getData()
        } else { throw DateError.notAHoliday }
    }
    
    func fastDay() throws -> FastDayData {
        if isHoliday() {
            return FastDayAnalyzer(month: self.month, day: self.day).getData()
        } else { throw DateError.notAFastDay }
    }
}
