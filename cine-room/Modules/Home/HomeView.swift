//
//  HomeView.swift
//  cine-room
//
//  Created by Alexandre Cardoso on 26/10/23.
//

import UIKit

final class HomeView: UIView {

    private let titleLabel: UILabel

    override init(frame: CGRect) {
        titleLabel = UILabel()

        super.init(frame: frame)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

// MARK: - ViewCodable
extension HomeView: ViewCodable {

    func buildHierarchy() {
        addSubview(titleLabel)
    }
    
    func buildConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -12),
            titleLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
    }

}
