//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  ConvertVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 08/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class CryptoVC: UIViewController {
    @IBOutlet weak var lb_input: UILabel!
    @IBOutlet weak var tf_input: UITextField!
    @IBOutlet weak var button_sha256: UIButton!
    @IBOutlet weak var button_sha512: UIButton!
    @IBOutlet weak var lb_output: UILabel!
    @IBOutlet weak var lb_result: UILabel!
    private var value = ""
    var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        navigationItem.title = contentTitle
        lb_output.isHidden = true
        roundCorner(view: tf_input, cornerRadius: 15, shadowOpacity: 0.2, shadowRadius: 0.4, shadowOffset: CGSize(width: 0, height: 0))
        roundCorner(view: button_sha256, cornerRadius: 15)
        roundCorner(view: button_sha512, cornerRadius: 15)
    }
    
    @IBAction func convertToSHA256(_ sender: Any) {
        conversion(isSHA256: true)
    }
    
    @IBAction func convertToSHA512(_ sender: Any) {
        conversion(isSHA256: false)
    }
    
    private func conversion(isSHA256: Bool) {
        value = tf_input.text ?? ""
        if !value.isEmpty {
            lb_output.isHidden = false
            if isSHA256 {
                lb_output.text = "Output SHA-256:"
                lb_result.text = sha256(value: value)
            } else {
                lb_output.text = "Output SHA-512:"
                lb_result.text = sha512(value: value)
            }
        } else {
            toast(message: "Please input value", view: view)
        }
    }
    
    @IBAction func actionDone(_ sender: UITextField) {
        sender.resignFirstResponder()
    }

}
