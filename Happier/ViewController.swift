//
//  ViewController.swift
//  Happier
//
//  Created by Vicente Noguez Salazar on 23/02/16.
//  Copyright © 2016 VNoguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var positiveMessage: UILabel!
    
    let colors = Colors()
    let phrases = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func givePositiveMessage(sender : AnyObject) {
        positiveMessage.text = phrases.returnHappyPhrase();
        let randomColor = colors.returnRandomColor()
        view.backgroundColor = randomColor
        view.tintColor = randomColor
    }

}

