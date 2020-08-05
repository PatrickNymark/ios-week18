//
//  ConceptViewController.swift
//  week18-tabapp
//
//  Created by Patrick Nymark on 03/08/2020.
//  Copyright © 2020 Patrick Nymark. All rights reserved.
//

import UIKit

class ConceptViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
