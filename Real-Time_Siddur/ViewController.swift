//
//  ViewController.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/19/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var nusach:[String] = ["Ashkenaz", "Sephard"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let todayDate = DateAnalyzer()
        title = "\(todayDate.day()) of \(todayDate.month()), \(todayDate.year())"
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nusach.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Nusach", for: indexPath)
        cell.textLabel?.text = nusach[indexPath.row]
        return cell
    }

}

