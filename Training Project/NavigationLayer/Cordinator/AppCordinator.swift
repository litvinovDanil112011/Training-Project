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
        guard let navigationsControler = navigationsControler else { return }
        let onbordingCordinator = OnbordingCordinator(
            type: .onbording, 
            navigationsControler: navigationsControler,
            finishDelegete: self)
        addChildCordinator(onbordingCordinator)
        onbordingCordinator.start()
    }
    
    func showMail() {
        
    }
}

extension AppCordinator: CoordinatorFinishDelegete {
    func cordinatorDidFinish(childCordinator: any CoordinatorProtocol) {
        removeChildCordinator(childCordinator)
        
        switch childCordinator.type {
            
        case .app:
            return
        case .onbording:
            navigationsControler?.popViewController(animated: true)
        case .home:
            navigationsControler?.popViewController(animated: true)
        case .order:
            navigationsControler?.popViewController(animated: true)
        case .list:
            navigationsControler?.popViewController(animated: true)
        case .proFile:
            navigationsControler?.popViewController(animated: true)
        }
    }
    
    
}
