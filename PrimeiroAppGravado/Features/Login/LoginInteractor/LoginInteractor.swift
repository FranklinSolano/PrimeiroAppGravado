//
//  LoginInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import Foundation

protocol LoginInteracting {
    func navigationRegisterinteractor()
}

final class LoginInteractor {
        
    let presenter: LoginPresenting
    private let service: LoginServicing
    
    
    init(presenter: LoginPresenting, service: LoginServicing) {
        self.presenter = presenter
        self.service = service
    }
    
}

extension LoginInteractor: LoginInteracting {
    func navigationRegisterinteractor() {
        presenter.navigationRegisterPresenter()
    }
    
    
}
