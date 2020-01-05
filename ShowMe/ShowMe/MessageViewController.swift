//
//  MessageViewController.swift
//  ShowMe
//
//  Created by Саид Дагалаев on 25.12.2019.
//  Copyright © 2019 Саид Дагалаев. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        messageLabel.text = messageData
    }
    
    @IBOutlet weak var messageLabel: UILabel!
    var messageData: String?
}
