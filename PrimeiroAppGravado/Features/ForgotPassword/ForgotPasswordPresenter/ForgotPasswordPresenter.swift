//
//  ForgotPasswordPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

//MARK: - ForgotPasswordPresenting
protocol ForgotPasswordPresenting{
    
}

//MARK: - ForgotPasswordPresenter
final class ForgotPasswordPresenter: ForgotPasswordPresenting {
    
    weak var view: ForgotPasswordViewControllerDisplay?
    let coordinator: ForgotPasswordCoordinating
    
    init(view: ForgotPasswordViewControllerDisplay? = nil, coordinator: ForgotPasswordCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
    
}
