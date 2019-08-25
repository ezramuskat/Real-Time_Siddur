//
//  TableViewDataSource.swift
//  Real-Time_Siddur
//
//  Created by Ezra Muskat on 8/25/19.
//  Copyright © 2019 Ezra Muskat. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    var cellArray = [String]()
    let identifier: String
    
    
    init(identifier: String) {
        self.identifier = identifier
        
    }
    
    func setCellArray(cells: [String]) {
        cellArray = cells
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Nusach", for: indexPath)
        cell.textLabel?.text = cellArray[indexPath.row]
        return cell
    }
    

}
