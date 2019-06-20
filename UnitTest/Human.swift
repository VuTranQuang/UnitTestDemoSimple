//
//  Human.swift
//  UnitTest
//
//  Created by RTC-HN154 on 6/13/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import Foundation

class Human {
    var traction = 0
    var type : HumanStyle
    var high: Gender
    init(type: HumanStyle, high: Gender) {
        self.type = type
        self.high = high
    }
    func parameter(weight: Int) {
        var hight = 0
        if self.type == .BlackHuman && self.high == .Male {
            hight = 70
        }
        if self.type == .WhiteHuman && self.high == .Male {
            hight = 85
        }
        if self.type == .YellowHuman && self.high == .Male {
            hight = 65
        }
        self.traction = (hight * weight)/2
    }
}



enum HumanStyle {
    case BlackHuman
    case WhiteHuman
    case YellowHuman
    
}
enum Gender {
    case Male
    case Female
    
}
