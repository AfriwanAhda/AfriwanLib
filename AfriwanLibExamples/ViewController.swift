//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
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
    
    @IBOutlet weak var button_blue: UIButton!
    @IBOutlet weak var view_green: UIView!
    @IBOutlet weak var view_orange: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        // Simple round corner
        roundCorner(view: button_blue, cornerRadius: 15)
        
        // Custom round corner with full parameter
        roundCorner(view: view_green, cornerRadius: 30, shadowOpacity: 0.4, shadowRadius: 2.5, shadowOffset: CGSize.init(width: 1, height: 1), masksToBounds: false)
        
        // Custom round corner with some parameter, for this example I create circle view.
        roundCorner(view: view_orange, cornerRadius: view_orange.frame.height/2, shadowOpacity: 0.35, shadowRadius: 3.2)
        
        // Add gesture recognizer for view
        view_green.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(actionViewGreen(_:))))
        view_orange.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(actionViewOrange(_:))))
    }
    
    @IBAction func actionButtonBlue(_ sender: UIButton) {
        // Simple animation
        pulsate(view: sender)
    }
    
    @objc private func actionViewGreen(_ sender: UITapGestureRecognizer) {
        // Custom animation with some parameter
        shake(view: view_green, duration: 0.2, autoreverses: true, repeatCount: 3)
    }
    
    @objc private func actionViewOrange(_ sender: UITapGestureRecognizer) {
        // Custom animation with full parameter
        flash(view: view_orange, duration: 0.5, autoreverses: true, repeatCount: 5, fromValue: 1, toValue: 0.2, timingFunction: CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut))
    }
    
}

