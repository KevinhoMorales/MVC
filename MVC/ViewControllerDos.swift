//
//  ViewControllerDos.swift
//  MVC
//
//  Created by Kevinho Morales on 6/11/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import UIKit

class ViewControllerDos: UIViewController, Storyboarded {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var coordinator: MainCoordinator?
    var nameReceived: String!
    var ageReceived: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = nameReceived
        ageLabel.text = ageReceived
        
    }
    
}
