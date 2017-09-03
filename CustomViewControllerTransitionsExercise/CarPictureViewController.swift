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
    
    var car: Car!     
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle()
        setImage()
    }
    
    private func setTitle() {
        navigationController?.title = car.title
    }
    
    private func setImage() {
        imageView.image = UIImage(named: car.imageName)
    }

    
}
