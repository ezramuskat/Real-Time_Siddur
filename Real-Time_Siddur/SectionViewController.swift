//
//  SectionViewController.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/25/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import UIKit

class SectionViewController: UITableViewController {
    let zmanim: [String] = ["Shacharis", "Mincha", "Maariv"]
    let thisTableSource: TableViewDataSource = TableViewDataSource(identifier: "Zman")
    var nusach: String = "Unknown"
    
    
    
    override func loadView() {
        super.loadView()
        thisTableSource.setCellArray(cells: zmanim)
        tableView.dataSource = thisTableSource
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Zman")
        title = nusach
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
