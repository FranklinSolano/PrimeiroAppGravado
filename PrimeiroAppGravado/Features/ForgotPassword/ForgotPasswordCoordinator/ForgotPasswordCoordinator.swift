//
//  ForgotPasswordCoordinatro.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//


import UIKit

//MARK: - ForgotPasswordCoordinating
protocol ForgotPasswordCoordinating{
    
}

//MARK: - ForgotPasswordCoordinator
final class ForgotPasswordCoordinator: ForgotPasswordCoordinating {
    var navigationController: UINavigationController?
    var presenter: ForgotPasswordPresenter?
}
