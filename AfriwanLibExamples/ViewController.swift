//
//  ViewController.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 26/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class ViewController: UIViewController {
    @IBOutlet weak var lb_test: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lb_test.text = String(genAd(a: 2, b: 7))
    }


}

