//
//  ViewController.swift
//  PrimeiroAppGravado
//
//  Created by Franklin  Stilhano Solano on 06/08/25.
//

import UIKit

class ViewController: UIViewController {
    
    var viewScreen: Screen?
    
    override func loadView() {
        viewScreen = Screen()
        view = viewScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

