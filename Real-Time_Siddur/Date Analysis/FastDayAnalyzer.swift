//
//  FastDayAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/19/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

class FastDayAnalyzer: SpecialDayAnalyzer {
    
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
