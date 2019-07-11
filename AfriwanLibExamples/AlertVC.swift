//
//  AlertVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 11/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class AlertVC: UIViewController {
    @IBOutlet weak var button_alert1: UIButton!
    @IBOutlet weak var button_alert2: UIButton!
    @IBOutlet weak var button_sheet1: UIButton!
    @IBOutlet weak var button_sheet2: UIButton!
    var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        navigationItem.title = contentTitle
        roundCorner(view: button_alert1, cornerRadius: 15)
        roundCorner(view: button_alert2, cornerRadius: 15)
        roundCorner(view: button_sheet1, cornerRadius: 15)
        roundCorner(view: button_sheet2, cornerRadius: 15)
    }
    
    @IBAction func actionAlert1(_ sender: Any) {
        flash(view: button_alert1)
        // Simple alert
        alert(title: "Simple Alert")
    }
    
    @IBAction func actionAlert2(_ sender: Any) {
        // Custom alert
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (action) in
            toast(message: "Yes action", view: self.view)
        }
        let noAction = UIAlertAction(title: "No", style: .destructive) { (action) in
            toast(message: "No action", view: self.view)
        }
        alert(title: "Alert", message: "Custom alert", actions: [yesAction, noAction])
    }
    
    @IBAction func actionSheet1(_ sender: UIButton) {
        pulsate(view: sender)
        // Simple sheet
        alert(title: "Simple Sheet", style: .actionSheet)
    }
    
    @IBAction func actionSheet2(_ sender: UIButton) {
        // Custom sheet
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            toast(message: "Cancel action", view: self.view)
        }
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (action) in
            toast(message: "Delete action", view: self.view)
        }
        alert(title: "Are you sure?", message: "You can not undo this action", actions: [cancelAction, deleteAction], style: .actionSheet)
    }
    
}
