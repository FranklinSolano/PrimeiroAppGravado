//
//  LoginPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import Foundation

protocol LoginPresenting {
    func navigationRegisterPresenter()
}

final class LoginPresenter {
    
    weak var view: LoginViewControllerDisplay?
    let coordinator: LoginCoordinating
    
    init(view: LoginViewControllerDisplay?, coordinator: LoginCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
    
}

extension LoginPresenter: LoginPresenting {
    func navigationRegisterPresenter() {
        coordinator.navigationRegisterCoordinator()
    }
    
    
}
