//
//  ListCordinator.swift
//  Training Project
//
//  Created by Daniil Litvinov on 13.07.2024.
//

import UIKit

class ListCordinator: Cordinator {
    //MARK: Metod
    override func start() {
        let vc = UIViewController()
        vc.view.backgroundColor = .cyan
        navigationsControler?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("override func finish")
    }
}
