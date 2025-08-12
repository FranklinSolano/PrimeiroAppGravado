//
//  LoginCoordinator.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

//MARK: - LoginCoordinating
protocol LoginCoordinating{
    func navigationRegisterCoordinator()
    func navigationForgotCoordinator()
    func navigationTabBarCoordinator()
}

//MARK: - LoginCoordinator
final class LoginCoordinator {
    
    var navigationController: UINavigationController?
    
}

//MARK: - LoginCoordinating
extension LoginCoordinator: LoginCoordinating {
    func navigationTabBarCoordinator() {
        
    }
    
    func navigationForgotCoordinator() {
        guard let navigationController else {return}
        let forgotFactory = ForgotPasswordFactory()
        let forgotVC = forgotFactory.makeFactory(navigationController: navigationController)
        navigationController.pushViewController(forgotVC, animated: true)
    }
    
    func navigationRegisterCoordinator() {
        guard let navigationController else {return}
        let registerFactoty = RegisterFactory()
        let registerVC = registerFactoty.makeFactory(navigationController: navigationController)
        navigationController.pushViewController(registerVC, animated: true)
    }
    
    
    
}
