//
//  orgotPasswordFactory.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

final class ForgotPasswordFactory {
    
    func makeFactory(navigationController: UINavigationController?) -> ForgotPasswordViewController{
        
        let coordinator = ForgotPasswordCoordinator()
        coordinator.navigationController = navigationController
        let service = ForgotPasswordService()
        let presenter = ForgotPasswordPresenter(view: nil, coordinator: coordinator)
        let interactor = ForgotPasswordInteractor(presenter: presenter, service: service)
       
        let forgotVC = ForgotPasswordViewController(interactor: interactor)
        presenter.view = forgotVC
        return forgotVC
        
    }
    
}
