//
//  MainCoordinator.swift
//  wallet-ios
//
//  Created by FELIPE AUGUSTO SILVA on 21/08/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController?  { get set }

    func start()
}


class MainCoordinator: Coordinator {

    var navigationController: UINavigationController?

    func start() {
        let view = MainViewController()
        view.coordinator = self
        navigationController?.setViewControllers([view], animated: false)
    }

}

extension MainCoordinator {

    func openSecondController() {
        let vc = secondController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }

    func openMainController() {
        let vc = MainViewController()
        vc.coordinator = self
        navigationController?.pushViewController(vc, animated: true)
    }

}

