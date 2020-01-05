//
//  DetailViewController.swift
//  CommitsApp
//
//  Created by Саид Дагалаев on 31.12.2019.
//  Copyright © 2019 Саид Дагалаев. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailItem: Commit?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let detail = self.detailItem {
            detailLabel.text = detail.message
            //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Commit 1/\(detail.author.commits.count)", style: .plain, target: self, action: #selector(showAuthorCommits))
        }
    }
    
    
    @IBOutlet weak var detailLabel: UILabel!
    

}
