//
//  Cordinator.swift
//  Training Project
//
//  Created by Daniil Litvinov on 13.07.2024.
//

import UIKit

enum CordinatorsType {
    case app
    case onbording
    case home
    case order
    case list
    case proFile
}

protocol CoordinatorProtocol: AnyObject {
    var childCordinates: [CoordinatorProtocol] { get set }
    var type: CordinatorsType { get }
    var navigationsControler: UINavigationController? { get set }
    var finishDelegete: CoordinatorFinishDelegete? { get set  }
    
    func start()
    func finish()
}

extension CoordinatorProtocol {
    func addChildCordinator(_ childCordinator : CoordinatorProtocol) {
        childCordinates.append(childCordinator)
    }
    
    func removeChildCordinator(_ childCordinator : CoordinatorProtocol) {
        childCordinates = childCordinates.filter{ $0 !== childCordinator }
    }
}

protocol CoordinatorFinishDelegete: AnyObject {
    func cordinatorDidFinish(childCordinator: CoordinatorProtocol)
}
