//
//  ViewController.swift
//  Flo
//
//  Created by Memo Figueredo on 12/26/18.
//  Copyright © 2018 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     //outlets
    @IBOutlet weak var counterView: CounterView!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func pushButtonPressed(_ sender: PushButton) {
        
        if sender.añadaColor {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        
        counterLabel.text = String(counterView.counter)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = String(counterView.counter)
    }


}

