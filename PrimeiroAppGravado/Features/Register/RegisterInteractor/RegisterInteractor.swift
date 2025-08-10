//
//  RegisterInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 09/08/25.
//

import UIKit

protocol RegisterInteracting {
    
    
}

final class RegisterInteractor: RegisterInteracting {
    
    let presenter: RegisterPresenting
    private let service: RegisterServicing
    
    init(presenter: RegisterPresenting, service: RegisterServicing) {
        self.presenter = presenter
        self.service = service
    }
}
