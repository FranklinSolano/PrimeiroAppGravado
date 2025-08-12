//
//  LoginPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import Foundation

//MARK: - LoginPresenting
protocol LoginPresenting {
    func navigationRegisterPresenter()
    func navigationForgotPresenter()
    func navigationTabBarPresenter()
}

//MARK: - LoginPresenter
final class LoginPresenter {
    
    weak var view: LoginViewControllerDisplay?
    let coordinator: LoginCoordinating
    
    init(view: LoginViewControllerDisplay?, coordinator: LoginCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
    
}

//MARK: - LoginPresenting
extension LoginPresenter: LoginPresenting {
    func navigationTabBarPresenter() {
        coordinator.navigationTabBarCoordinator()
    }
    
    func navigationForgotPresenter() {
        coordinator.navigationForgotCoordinator()
    }
    
    func navigationRegisterPresenter() {
        coordinator.navigationRegisterCoordinator()
    }
    
    
}
