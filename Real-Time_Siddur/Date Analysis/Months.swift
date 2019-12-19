//
//  Months.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 10/9/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import Foundation

enum Month {
    case Tishrei
    case Cheshvan
    case Kislev
    case Tevet
    case Shevat
    case Adar
    case Nissan
    case Iyar
    case Sivan
    case Tammuz
    case Av
    case Elul
    case Adar_Aleph
    case Adar_Bet
    case MonthNotFound
    
    func getName() -> String {
        switch self {
        case .Tishrei:
            return "Tishrei"
        case .Cheshvan:
            return "Cheshvan"
        case .Kislev:
            return "Kislev"
        case .Tevet:
            return "Tevet"
        case .Shevat:
            return "Tevet"
        case .Adar:
            return "Tevet"
        case .Nissan:
            return "Tevet"
        case .Iyar:
            return "Iyar"
        case .Sivan:
            return "Tevet"
        case .Tammuz:
            return "Tevet"
        case .Av:
            return "Tevet"
        case .Elul:
            return "Elul"
        case .Adar_Aleph:
            return "Adar Aleph"
        case .Adar_Bet:
            return "Adar Bet"
        case .MonthNotFound:
            return "Month Not Found"
        }
    }
}
