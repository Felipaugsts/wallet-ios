//
//  CoordinatorProtocol.swift
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

protocol Coordinating {
    func openSecondController()
    func openMainController()
}

