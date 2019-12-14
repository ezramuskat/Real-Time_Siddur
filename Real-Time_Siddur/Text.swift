//
//  Text.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/26/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

/// A structure to hold JSON data from Sefaria
struct Text: Codable {
    //var heVersionTitle: String
    //var next: String
    var he: [String]
    //var sectionNames: [String]
    //var sections: [Int]
    var text: [String]
    //var versionTitle: String
}
