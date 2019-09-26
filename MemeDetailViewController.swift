//
//  MemeDetailViewController.swift
//  imagePicker
//
//  Created by Nammy Dun on 31/7/2019.
//  Copyright © 2019 Nammy Dun. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    // Properties
    var meme: Meme!
    
    // Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        self.imageView!.image = meme.memedImage
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
        
    }
    
}
