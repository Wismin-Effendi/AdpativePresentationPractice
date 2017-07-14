//
//  CarPictureViewController.swift
//  CustomViewControllerTransitionsExercise
//
//  Created by Wismin Effendi on 7/14/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class CarPictureViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImage()
    }
    

    private func setImage() {
        imageView.image = UIImage(named: imageName)
    }

}
