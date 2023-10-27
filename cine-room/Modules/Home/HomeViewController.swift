//
//  HomeViewController.swift
//  cine-room
//
//  Created by Alexandre Cardoso on 26/10/23.
//

import UIKit

final class HomeViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        view = HomeView(frame: .zero)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

}
