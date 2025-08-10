//
//  ForgotPasswordInteractor.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 10/08/25.
//

import UIKit

//MARK: - ForgotPasswordInteracting
protocol ForgotPasswordInteracting {
    
}

//MARK: - ForgotPasswordInteractor
final class ForgotPasswordInteractor: ForgotPasswordInteracting {
    
    let presenter: ForgotPasswordPresenting
    private let service: ForgotPasswordServicing
    
    init(presenter: ForgotPasswordPresenting, service: ForgotPasswordServicing) {
        self.presenter = presenter
        self.service = service
    }
}
