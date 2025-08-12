//
//  ForgotPasswordPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

//MARK: - ForgotPasswordPresenting
protocol ForgotPasswordPresenting{
    func navigationBackButtonPresenter()
}

//MARK: - ForgotPasswordPresenter
final class ForgotPasswordPresenter {
    
    weak var view: ForgotPasswordViewControllerDisplay?
    let coordinator: ForgotPasswordCoordinating
    
    init(view: ForgotPasswordViewControllerDisplay? = nil, coordinator: ForgotPasswordCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
    
}

extension ForgotPasswordPresenter: ForgotPasswordPresenting {
    func navigationBackButtonPresenter() {
        coordinator.navigationBackButtonCoordinator()
    }
    
    
}
