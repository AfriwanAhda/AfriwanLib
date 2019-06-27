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
    @IBOutlet weak var view_test: UIView!
    @IBOutlet weak var button_test: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        roundCorner(view: view_test, cornerRadius: 15)
//        roundCorner(view: view_test, cornerRadius: 15, shadowOpacity: 0.3, shadowRadius: 2.0, shadowOffset: CGSize.init(width: 0, height: 1), masksToBounds: false)
        
        roundCorner(view: button_test, cornerRadius: button_test.frame.height/2)
//        roundCorner(view: button_test, cornerRadius: 20, shadowOpacity: 0.7, masksToBounds: true)

//        pulsate(view: view_test)
//        pulsate(view: button_test)
        
        shake(view: view_test)
        flash(view: button_test)
        
    }


}

