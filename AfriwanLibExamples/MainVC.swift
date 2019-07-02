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
    var content = ["Animation and Round Corner", "Check Internet Connection", "Load Image"]
    private var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.textColor = UIColor.black
        cell.textLabel?.text = content[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        contentTitle = content[indexPath.row]
        switch indexPath.row {
        case 0:
            performSegue(withIdentifier: "segue_animation", sender: self)
        case 1:
            performSegue(withIdentifier: "segue_connection", sender: self)
        case 2:
            performSegue(withIdentifier: "segue_load_image", sender: self)
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
        } else {
            let destination = segue.destination as! LoadImageVC
            destination.contentTitle = contentTitle
        }
    }

}
