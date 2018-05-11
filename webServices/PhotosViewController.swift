//
//  PhotosViewController.swift
//  webServices
//
//  Created by d182_oscar_a on 11/05/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
   
    @IBOutlet var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchInterestingPhotos()
    }
}
