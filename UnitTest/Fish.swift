//
//  Fish.swift
//  UnitTest
//
//  Created by RTC-HN154 on 6/12/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import Foundation


class Fish {
    var distance = 0
    var fishStyle : FishStyle
    var lifeExpectancy : LifeExpectancy
    init(fishStyle: FishStyle, lifeExpectancy: LifeExpectancy) {
        self.fishStyle = fishStyle
        self.lifeExpectancy = lifeExpectancy
    }
    
    func lifeCircle(km: Int) {
        var age = 0
        if self.fishStyle == .CatFish && self.lifeExpectancy == .Medium {
            age = 20
        }
        if self.fishStyle == .PredatorFish && self.lifeExpectancy == .Medium {
            age = 60
        }
        if self.fishStyle == .MammalFish && self.lifeExpectancy == .Medium {
            age = 100
        }
        self.distance = age * (km)
    }
}


enum FishStyle {
    case CatFish
    case PredatorFish
    case MammalFish
}
enum LifeExpectancy {
    case Short
    case Medium
    case Long

}
