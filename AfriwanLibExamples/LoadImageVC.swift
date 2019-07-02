//  بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
//
//  LoadImageVC.swift
//  AfriwanLibExamples
//
//  Created by Afriwan Ahda on 01/07/19.
//  Copyright © 2019 AfriwanAhda. All rights reserved.
//

import UIKit
import AfriwanLib

class LoadImageVC: UIViewController {
    @IBOutlet weak var image_top: UIImageView!
    @IBOutlet weak var image_bottom: UIImageView!
    var contentTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        navigationItem.title = contentTitle
        
        roundCorner(view: image_top, cornerRadius: 15, masksToBounds: true)
        roundCorner(view: image_bottom, cornerRadius: image_bottom.bounds.width/2, masksToBounds: true)
        
        // Simple load image
        image_top.loadImage(imageUrl: "https://github.com/AfriwanAhda/AfriwanLib/blob/master/demo/sky.jpg")
        
        // Load image with background image before image fully loaded
        image_bottom.loadImage(imageUrl: "https://avatars0.githubusercontent.com/u/33817855?s=400&u=4c3c536e97c52bf1108604b53e6d46a58b55d426&v=4", backgroundImage: #imageLiteral(resourceName: "AppIcon"))
    }

}
