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

protocol TabBarCordinator: AnyObject, CoordinatorProtocol {
    var tabBarController: UITableViewController? { get set }
}

class Cordinator: CoordinatorProtocol {
    var childCordinates: [any CoordinatorProtocol] = []
    var type: CordinatorsType
    var navigationsControler: UINavigationController?
    var finishDelegete: (any CoordinatorFinishDelegete)?
    func start() {
        print("Cordinator Start")
    }
    
    func finish() {
        print("Cordinator Finish")
    }
    //MARK: - init / deinit
    init(childCordinates: [CoordinatorProtocol] = [CoordinatorProtocol](), type: CordinatorsType, navigationsControler: UINavigationController? = nil, finishDelegete: (any CoordinatorFinishDelegete)? = nil) {
        self.childCordinates = childCordinates
        self.type = type
        self.navigationsControler = navigationsControler
        self.finishDelegete = finishDelegete
    }
    deinit {
        print("Cordinator deinit")
        childCordinates.forEach { $0.finishDelegete = nil }
        childCordinates.removeAll()
    }
}
