//
//  ViewController.swift
//  UnitTest
//
//  Created by RTC-HN154 on 6/12/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let ferrari =  Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
    }


}

