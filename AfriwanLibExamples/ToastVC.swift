//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  ToastVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 07/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class ToastVC: UIViewController {
    @IBOutlet weak var button_red: UIButton!
    @IBOutlet weak var button_yellow: UIButton!
    @IBOutlet weak var button_green: UIButton!
    var contentTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        navigationItem.title = contentTitle
        roundCorner(view: button_red, cornerRadius: 15)
        roundCorner(view: button_yellow, cornerRadius: 15)
        roundCorner(view: button_green, cornerRadius: 15)
    }
    
    @IBAction func actionButtonRed(_ sender: Any) {
        // Simple toast
        toast(message: "Simple Toast", view: self.view)
    }
    
    @IBAction func actionButtonYellow(_ sender: Any) {
        // Custom toast with some parameter
        toast(message: "This is Toast with parameter added:\ny (vertical position) and height", view: self.view, y: 145, height: 58)
    }
    
    @IBAction func actionButtonGreen(_ sender: Any) {
        // Complete toast with all parameter
        toast(message: "Complete Toast with all parameter", view: view, duration: 5, textColor: UIColor.white, backgroundColor: UIColor.blue, y: 179, height: 32, fontSize: 16)
    }
    
}
