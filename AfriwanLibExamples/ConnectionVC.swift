//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  ConnectionVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 29/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class ConnectionVC: UIViewController {
    @IBOutlet weak var button_connection: UIButton!
    @IBOutlet weak var lb_status: UILabel!
    var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        navigationItem.title = contentTitle
        roundCorner(view: button_connection, cornerRadius: 30)
    }
    
    @IBAction func actionCheckConnection(_ sender: UIButton) {
        pulsate(view: sender)
        var resultText = ""
        if isConnectedToInternet() {
            resultText = "Connected"
        } else {
            resultText = "Not Connected"
        }
        lb_status.text = "Status: \(resultText)"
    }

}
