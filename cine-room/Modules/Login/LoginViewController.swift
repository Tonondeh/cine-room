//
//  LoginViewController.swift
//  cine-room
//
//  Created by Alexandre Cardoso on 09/10/22.
//

import UIKit

final class LoginViewController: UIViewController {

    private lazy var customView: LoginView = {
        return LoginView()
    }()

    override func loadView() {
        super.loadView()
        view = customView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
