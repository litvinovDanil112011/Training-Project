//
//  OrderCordinator.swift
//  Training Project
//
//  Created by Daniil Litvinov on 13.07.2024.
//

import UIKit

class OrderCordinator: Cordinator {
    //MARK: Metod
    override func start() {
        let vc = UIViewController()
        vc.view.backgroundColor = .link
        navigationsControler?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("override func finish")
    }
}

