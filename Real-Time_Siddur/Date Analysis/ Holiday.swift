//
//   Holiday.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 12/14/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation



enum Holiday: String {
    case Sukkot
    case Hannukah
    case Purim
    case Passover
    case None
    
    func getName() -> String {
        switch self {
        case .Sukkot:
            return "Sukkot"
        case .Hannukah:
            return "Hannukah"
        case .Purim:
            return "Purim"
        case .Passover:
            return "Passover"
        case .None:
            return "None"
        }
    }
}
