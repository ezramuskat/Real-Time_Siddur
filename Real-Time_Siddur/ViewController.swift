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
    var tableSource: TableViewDataSource = TableViewDataSource(identifier: "Nusach")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let todayDate = DateAnalyzer()
        
        do {
            try title = "\(todayDate.day()) of \(todayDate.month()), \(todayDate.year())"
        } catch Errors.stdError(let errorMessage) {
            title = errorMessage
        }
        tableSource.setCellArray(cells: nusach)
        tableView.dataSource = tableSource
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = SectionViewController()
        vc.nusach = nusach[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }

}

