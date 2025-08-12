//
//  ForgotPasswordCoordinatro.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//


import UIKit

//MARK: - ForgotPasswordCoordinating
protocol ForgotPasswordCoordinating{
    func navigationBackButtonCoordinator()
}

//MARK: - ForgotPasswordCoordinator
final class ForgotPasswordCoordinator: ForgotPasswordCoordinating {
    func navigationBackButtonCoordinator() {
        guard let navigationController else {return}
        navigationController.popViewController(animated: true)
    }
    
    var navigationController: UINavigationController?
    var presenter: ForgotPasswordPresenter?
}
