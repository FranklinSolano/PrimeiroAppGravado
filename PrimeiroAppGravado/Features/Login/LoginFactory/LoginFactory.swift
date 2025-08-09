//
//  LoginFActory.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

final class LoginFactory {
    
    func makeFactory(navigationController: UINavigationController) -> (viewcontroller: LoginViewController, coordinator: LoginCoordinator){
        
        let coordinator = LoginCoordinator()
        coordinator.navigationController = navigationController
        
        let service = LoginService()
        
        let presenter = LoginPresenter(view: nil, coordinator: coordinator)
        
        let interactor = LoginInteractor(presenter: presenter, service: service)
        
        let loginVc = LoginViewController(interactor: interactor)
        
        presenter.view = loginVc
        
        return (loginVc, coordinator)
        
        
    }
}
