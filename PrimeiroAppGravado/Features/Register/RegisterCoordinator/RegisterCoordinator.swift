//
//  RegisterCoordinator.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterCoordinating
protocol RegisterCoordinating{
    func navigationBackButtonCoordinator()
}

//MARK: - RegisterCoordinator
final class RegisterCoordinator: RegisterCoordinating {
    func navigationBackButtonCoordinator() {
        guard let navigationController else {return}
        navigationController.popViewController(animated: true)
    }
    
    
    var navigationController: UINavigationController?
    var presenter: RegisterPresenter?
    
    
}


