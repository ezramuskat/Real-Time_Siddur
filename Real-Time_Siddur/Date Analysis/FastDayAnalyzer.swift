//
//  FastDayAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/19/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation


/// Produces relevant fast day-specific information about the day
class FastDayAnalyzer: SpecialDayAnalyzer {
    
    /// Outputs all relevant data about the fast day status of the day
    ///
    /// - Returns: A FastDayData struct containing data about the day
    func getData() -> FastDayData {
        return FastDayData(isFastDay: super.isFastDay(), fastDay: fastDay(), fastDayName: fastDay().getName())
       }
    
    func fastDay() -> FastDay {
        if super.isFastDay() {
            switch self.month {
            default:
                return .None
            }
        }
        return .None
    }
}
