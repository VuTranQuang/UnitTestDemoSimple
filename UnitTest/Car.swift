
//
//  Car.swift
//  UnitTest
//
//  Created by RTC-HN154 on 6/12/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import Foundation


class Car {
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    init(type:CarType, transmissionMode:CarTransmissionMode){
        self.type = type
        self.transmissionMode = transmissionMode
    }
    func start(minutes: Int) {
        var speed = 0
        if self.type == .Economy && self.transmissionMode == .Drive {
            speed = 30
        }
        if self.type == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        if self.type == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        self.miles = speed * (minutes / 60)
    }
}

enum CarType {
    case Economy
    case OffRoad
    case Sport
}
enum CarTransmissionMode {
    case Park
    case Reverse
    case Neutral
    case Drive
}



@objc
extension NSArray {
    
    func isMatch(withArray compareArray: [Element]?) -> Bool {
        guard let selfArray = self as? [String], let compareArray = compareArray as? [String] else {
            return false
        }
        // 配列の並び順を合わせる
        let sortedArray = selfArray.sorted { obj1, obj2 -> Bool in
            obj1 > obj2
        }

        let sortedCompareArray = compareArray.sorted { obj1, obj2 -> Bool in
            obj1 > obj2
        }

        if (sortedArray.isExist || sortedCompareArray.isExist) && !(sortedArray == sortedCompareArray) {
            return false
        }
        return true
    }
}

extension Array {
    var isExist: Bool {
        return !isEmpty
    }
}




