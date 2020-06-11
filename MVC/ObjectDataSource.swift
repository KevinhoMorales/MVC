//
//  ObjetDataSource.swift
//  MVC
//
//  Created by Kevinho Morales on 6/11/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import UIKit

class ObjectDataSource: NSObject, UITableViewDataSource {

    var array = ["Kevinho Morales", "Jimena Jácome", "Madison Morales"]
    var arrayDetail = ["26 años", "24 años", "3 años"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = array[indexPath.row]
        cell?.detailTextLabel?.text = arrayDetail[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
}
