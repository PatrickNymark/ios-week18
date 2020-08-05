//
//  DonateViewController.swift
//  week18-tabapp
//
//  Created by Patrick Nymark on 03/08/2020.
//  Copyright © 2020 Patrick Nymark. All rights reserved.
//

import UIKit

class DonateViewController: UIViewController {

    @IBOutlet weak var amountSlider: UISlider!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var confirmedMessage: UILabel!
    
    @IBOutlet weak var donateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        confirmedMessage.isHidden = true
        
        amountSlider.addTarget(self, action: #selector(self.sliderChanged), for: .valueChanged)
        donateBtn.addTarget(self, action: #selector(self.donateClicked), for: .touchUpInside)
    }
    
    @objc func sliderChanged() {
        amountLabel.text = "\(Int(amountSlider.value)) DKK"
    }
    
    @objc func donateClicked() {
        let title = "Please confirm that you would like to donate: \(Int(amountSlider.value))"
        
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.amountSlider.value = 20
            self.amountLabel.text = "20 DKK"
            self.confirmedMessage.isHidden = false
            
            Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(self.hideMessage), userInfo: nil, repeats: false)
        }))
        
        
        present(alertController, animated: true)
    }
    
    @objc func hideMessage() {
        confirmedMessage.isHidden = true
        self.navigationController?.popToRootViewController(animated: true)
    }
}



