//
//  ViewController.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/19/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let todayDate = DateAnalyzer()
        title = "\(todayDate.day()) of \(todayDate.month()), \(todayDate.year())"
        // Do any additional setup after loading the view.
    }


}

