//
//  TextAnalyzer.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 9/8/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

class TextAnalyzer {
    public let text: String
    
    init(text: String) {
        self.text = text
    }
    
    func getText() throws -> String {
        return text
    }
}
