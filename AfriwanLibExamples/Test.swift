//
//  Test.swift
//  AfriwanLibExamples
//
//  Created by Renom on 27/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func rcA() {
        layer.masksToBounds = true
        layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 2.0
        layer.cornerRadius = 15.0
    }
}
