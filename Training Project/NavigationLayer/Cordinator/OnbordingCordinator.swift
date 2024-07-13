//
//  OnbordingCordinator.swift
//  Training Project
//
//  Created by Daniil Litvinov on 13.07.2024.
//

import UIKit

import UIKit

class OnbordingCordinator: Cordinator {
    //MARK: Metod
    override func start() {
        let vc = MailViewController()
        navigationsControler?.pushViewController(vc, animated: true)
    }
    override func finish() {
        print("override func finish")
    }
}
