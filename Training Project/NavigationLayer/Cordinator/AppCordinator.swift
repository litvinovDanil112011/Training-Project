//
//  AppCordinator.swift
//  Training Project
//
//  Created by Daniil Litvinov on 13.07.2024.
//

import UIKit

class AppCordinator: Cordinator {
    //MARK: Metod
    override func start() {
          showOnbordingFlow()
    }
    override func finish() {
        print("override func finish")
    }
}

private extension AppCordinator {
    func showOnbordingFlow() {
        
    }
    
    func showMail() {
        
    }
}
