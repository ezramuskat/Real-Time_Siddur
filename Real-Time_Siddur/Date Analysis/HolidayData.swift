//
//  HolidayData.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/15/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation


/// Holds date about the  holiday for easy acces
struct HolidayData {
    let isHoliday: Bool
    let holiday: Holiday
    let holidayName: String
    let dayOf: Int?
}
