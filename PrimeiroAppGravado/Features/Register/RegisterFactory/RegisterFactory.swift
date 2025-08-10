//
//  RegisterFactory.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit 


//MARK: - RegisterFactory
final class RegisterFactory {
    
    func makeFactory(navigationController: UINavigationController?) -> RegisterViewController{
        
        let coordinator = RegisterCoordinator()
        coordinator.navigationController = navigationController
        let service = RegisterService()
        let presenter = RegisterPresenter(view: nil, coordinator: coordinator)
        let interactor = RegisterInteractor(presenter: presenter, service: service)
        let registerVC = RegisterViewController(interactor: interactor)
        presenter.view = registerVC
        coordinator.presenter = presenter
        return registerVC
        
        
    }
}

