//
//  RegisterInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterInteracting
protocol RegisterInteracting {
    func navigationBackButtonInteractor()
}
 
//MARK: - RegisterInteractor
final class RegisterInteractor {
    
    let presenter: RegisterPresenting
    private let service: RegisterServicing
    
    init(presenter: RegisterPresenting, service: RegisterServicing) {
        self.presenter = presenter
        self.service = service
    }
}

extension RegisterInteractor: RegisterInteracting {
    func navigationBackButtonInteractor() {
        presenter.navigationBackButtonPresenter()
    }
    
    
}
