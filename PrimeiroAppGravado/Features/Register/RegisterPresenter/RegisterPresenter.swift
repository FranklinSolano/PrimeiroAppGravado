//
//  RegisterPresenter.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

protocol RegisterPresenting {
    
}

final class RegisterPresenter: RegisterPresenting {
    
    weak var view: RegisterViewControllerDisplay?
    let coordinator: RegisterCoordinating
    
    init(view: RegisterViewControllerDisplay? = nil, coordinator: RegisterCoordinating) {
        self.view = view
        self.coordinator = coordinator
    }
    
    
}
