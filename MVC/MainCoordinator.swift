//
//  MainCoordinator.swift
//  MVC
//
//  Created by Kevinho Morales on 6/11/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    // INICIALIZA EL NAVIGATION VIEW CONTROLLER
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.navigationBar.prefersLargeTitles = true
    }
    
    // DEVUELVE UNA INSTANACIA DEL VIEWCONTROLLER QUE LO LLAMA. NUESTRA PANTALLA PRINCIPAL
    func start() {
        let vc  = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goDetailView(with name: String, age: String) {
        let vc2 = ViewControllerDos.instantiate()
        vc2.title = name
        vc2.nameReceived = "My name is \(name)"
        vc2.ageReceived = "I'm \(age)"
        vc2.coordinator = self
        navigationController.pushViewController(vc2, animated: true)
    }
}
