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
    let dayNames: [Int:String] = [1: "יום ראשון", 2 : "יום שני"]
    let errorMessage: String = "Whoops! Looks like something went wrong here; please send a bug report to the app developer"
    
    override func getText() throws -> String {
        guard let dayName: String = dayNames[day] else {throw Errors.stdError(message: errorMessage) }
        if text.contains(dayName) {
            if let range = text.range(of: dayName) {
                let shir: Substring = text[..<range.lowerBound]
                return String(shir)
            } else {
                throw Errors.stdError(message: errorMessage)
            }
        } else {
            throw Errors.stdError(message: errorMessage)
        }
    }
    
}
