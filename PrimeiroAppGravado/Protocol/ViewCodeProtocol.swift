//
//  ViewCodeProtocol.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

protocol ViewCodeProtocol {
    func setupElements()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodeProtocol {
    func setupView() {
        setupElements()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
