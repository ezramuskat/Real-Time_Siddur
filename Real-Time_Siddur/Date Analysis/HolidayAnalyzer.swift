//
//  HolidayAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/14/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation


/// Holds relevant holiday information about the day
class HolidayAnalyzer: SpecialDayAnalyzer {
    
    
    func getData() -> HolidayData {
        return HolidayData(isHoliday: super.isHoliday(), holiday: holiday(), holidayName: holiday().getName(), dayOf: dayOf())
    }
    
    func holiday() -> Holiday {
        if super.isHoliday() {
            switch self.month {
            case .Tishrei:
                return .Sukkot
            case .Kislev:
                return .Hannukah
            case .Tevet:
                return .Hannukah
            case .Adar:
                return .Purim
            case .Adar_Bet:
                return .Purim
            case .Nissan:
                return .Passover
            default:
                return .None
            }
        }
        return .None
    }
    
    func dayOf() -> Int? {
        if isHoliday() {
            
        }
        return nil
    }
    
}
