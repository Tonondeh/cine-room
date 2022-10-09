//
//  ViewCodable.swift
//  cine-room
//
//  Created by Alexandre Cardoso on 09/10/22.
//

import Foundation

protocol ViewCodable {
    func configure()
    func buildHierarchy()
    func buildConstraints()
    func setupView()
}

extension ViewCodable {

    func setupView() {
        configure()
        buildHierarchy()
        buildConstraints()
    }

    func configure() { }

}
