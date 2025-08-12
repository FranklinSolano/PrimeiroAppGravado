//
//  RegisterPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterPresenting
protocol RegisterPresenting {
    func navigationBackButtonPresenter()
}

//MARK: - RegisterPresenter
final class RegisterPresenter {
    
    weak var view: RegisterViewControllerDisplay?
    let coordinator: RegisterCoordinating
    
    init(view: RegisterViewControllerDisplay? = nil, coordinator: RegisterCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
}

extension RegisterPresenter: RegisterPresenting {
    func navigationBackButtonPresenter() {
        coordinator.navigationBackButtonCoordinator()
    }
    
    
}
