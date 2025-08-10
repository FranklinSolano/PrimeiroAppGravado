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
}

//MARK: - LoginCoordinator
final class LoginCoordinator {
    
    var navigationController: UINavigationController?
    var presenter: LoginPresenting?
    
    
}

//MARK: - LoginCoordinating
extension LoginCoordinator: LoginCoordinating {
    func navigationRegisterCoordinator() {
        guard let navigationController else {return}
        let registerFactoty = RegisterFactory()
        let registerVC = registerFactoty.makeFactory(navigationController: navigationController)
        navigationController.pushViewController(registerVC, animated: true)
    }
    
    
    
}
