//
//  InformationViewController.swift
//  AdaptivePresentationExercise
//
//  Created by Wismin Effendi on 6/17/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    var detailText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = detailText
    }



}
