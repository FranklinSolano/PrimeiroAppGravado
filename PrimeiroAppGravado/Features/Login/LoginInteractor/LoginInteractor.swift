//
//  LoginInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import Foundation
 
//MARK: - LoginInteracting
protocol LoginInteracting {
    func navigationRegisterinteractor()
    func navigationForgotInteractor()
    func navigationTabBarInteractor()
}

//MARK: - LoginInteractor
final class LoginInteractor {
        
    let presenter: LoginPresenting
    private let service: LoginServicing
    
    
    init(presenter: LoginPresenting, service: LoginServicing) {
        self.presenter = presenter
        self.service = service
    }
    
}

//MARK: - LoginInteracting
extension LoginInteractor: LoginInteracting {
    func navigationTabBarInteractor() {
        presenter.navigationTabBarPresenter()
    }
    
    func navigationForgotInteractor() {
        presenter.navigationForgotPresenter()
    }
    
    func navigationRegisterinteractor() {
        presenter.navigationRegisterPresenter()
    }
    
    
}
