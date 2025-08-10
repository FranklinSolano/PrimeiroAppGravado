//
//  RegisterInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

//MARK: - RegisterInteracting
protocol RegisterInteracting {
}
 
//MARK: - RegisterInteractor
final class RegisterInteractor: RegisterInteracting {
    
    let presenter: RegisterPresenting
    private let service: RegisterServicing
    
    init(presenter: RegisterPresenting, service: RegisterServicing) {
        self.presenter = presenter
        self.service = service
    }
}
