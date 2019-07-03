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
        image_top.loadImage(imageUrl: "https://raw.githubusercontent.com/AfriwanAhda/FileDemo/master/sky.jpg")
        
        // Load image with background image before image fully loaded
        image_bottom.loadImage(imageUrl: "https://media.licdn.com/dms/image/C5103AQGUz6pqHgunTQ/profile-displayphoto-shrink_200_200/0?e=1567641600&v=beta&t=dJxGvRdnVkFsJLzXcd264hsAQk2V-zeJ6qienKhDcI4", backgroundImage: #imageLiteral(resourceName: "AppIcon"))
    }

}
