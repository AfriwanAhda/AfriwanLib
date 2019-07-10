//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  MainVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 29/06/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit

class MainVC: UITableViewController {
    var content = ["Animation and Round Corner", "Check Internet Connection", "Load Image", "Dynamic Toast", "Cryptographic Hash Function"]
    private var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = content[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        contentTitle = content[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "segue_animation", sender: self)
        case 1:
            performSegue(withIdentifier: "segue_connection", sender: self)
        case 2:
            performSegue(withIdentifier: "segue_load_image", sender: self)
        case 3:
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "ToastID") as! ToastVC
            destinationVC.contentTitle = contentTitle
            DispatchQueue.main.async {
                self.navigationController?.pushViewController(destinationVC, animated: true)
            }
        case 4:
            let destinationVC = storyboard.instantiateViewController(withIdentifier: "CryptoID") as! CryptoVC
            destinationVC.contentTitle = contentTitle
            DispatchQueue.main.async {
                self.navigationController?.pushViewController(destinationVC, animated: true)
            }
        default: break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue_animation" {
            let destination = segue.destination as! AnimationVC
            destination.contentTitle = contentTitle
        } else if segue.identifier == "segue_connection" {
            let destination = segue.destination as! ConnectionVC
            destination.contentTitle = contentTitle
        } else if segue.identifier == "segue_load_image" {
            let destination = segue.destination as! LoadImageVC
            destination.contentTitle = contentTitle
        }
    }

}
