//
//  ViewController.swift
//  BlurApp
//
//  Created by Саид Дагалаев on 13.02.2020.
//  Copyright © 2020 Саид Дагалаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageSet = ["cloud", "coffee", "food", "pmq"]
    var blurEffectView: UIVisualEffectView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Randomly pick an image
        let selectedImageIndex = Int(arc4random_uniform(4))
        // Apply blurring effect
        backgroundImageView.image = UIImage(named: imageSet[selectedImageIndex])
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView?.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView!)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        blurEffectView?.frame = view.bounds
    }
    
    @IBOutlet var backgroundImageView: UIImageView!
}
