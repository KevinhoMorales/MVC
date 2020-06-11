//
//  ViewController.swift
//  MVC
//
//  Created by Kevinho Morales on 6/11/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, Storyboarded {
    
    @IBOutlet weak var tableView: UITableView!
    
    var coordinator: MainCoordinator?
    var dataSource = ObjectDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        self.showAlert(withTitle: "Welcome", withMessage: "Family members", buttonOK: "OK")
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        coordinator?.goDetailView(with: dataSource.array[indexPath.row], age: dataSource.arrayDetail[indexPath.row]) // LLamamos a la funcion que presenta otro ViewController
    }

}

