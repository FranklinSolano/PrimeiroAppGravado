//
//  ModuleFactory.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 12/08/25.
//

import UIKit

protocol ModuleFactory {
    func makeFactory(navigationController: UINavigationController) -> UIViewController
}
