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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.zman = zmanim[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}
