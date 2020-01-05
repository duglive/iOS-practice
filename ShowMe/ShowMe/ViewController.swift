//
//  ViewController.swift
//  ShowMe
//
//  Created by Саид Дагалаев on 25.12.2019.
//  Copyright © 2019 Саид Дагалаев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let messageController = segue.destination as! MessageViewController
        messageController.messageData = textToSenfField.text
    }
    
    @IBOutlet weak var textToSenfField: UITextField!
    
    @IBAction func showMe(_ sender: Any) {
        NSLog("User Wrote: %@", textToSenfField.text!)
    }
}
