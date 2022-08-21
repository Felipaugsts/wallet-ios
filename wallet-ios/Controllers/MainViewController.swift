//
//  ViewController.swift
//  wallet-ios
//
//  Created by FELIPE AUGUSTO SILVA on 21/08/22.
//

import UIKit

class MainViewController: UIViewController {
    
    var coordinator: Coordinating?

    let button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("click button", for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        view.addSubview(button)
        button.addTarget(self, action: #selector(didClickBtn), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
    @objc
    func didClickBtn() {
        coordinator?.openSecondController()
    }
}

class secondController: UIViewController {

    var coordinator: Coordinating?

    let button: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("click button", for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
            // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        view.addSubview(button)
        button.addTarget(self, action: #selector(didClickBtn), for: .touchUpInside)

        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
    @objc
    func didClickBtn() {
        coordinator?.openMainController()
    }
}


