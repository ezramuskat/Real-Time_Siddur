//
//  ShirShelYom.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 9/8/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

class ShirShelYom: TextAnalyzer {
    let day: Int = Calendar.current.component(.weekday, from: Date())
    let dayNames: [Int:String] = [1: "יום ראשון"]
    
    override func getText() -> String {
        guard let dayName: String = dayNames[day] else {return "Whoops! Looks like something went wrong here; please send a bug report to the app developer"}
        if text.contains(dayName) {
            if let range = text.range(of: dayName) {
                let shir: Substring = text[..<range.lowerBound]
                return String(shir)
            } else {
                return "Whoops! Looks like something went wrong here; please send a bug report to the app developer"
            }
        } else {
            return "Whoops! Looks like something went wrong here; please send a bug report to the app developer"
        }
    }
    
}
