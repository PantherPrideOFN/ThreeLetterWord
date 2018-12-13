//
//  ViewController.swift
//  ThreeLetterWord
//
//  Created by ISRAEL TEJEDA on 11/28/18.
//  Copyright © 2018 ISRAEL TEJEDA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    


    @IBOutlet weak var currentLetterLabel: UILabel!
    @IBOutlet var wordLabel: [UILabel]!
    
    var letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var counter = 0
    var currentLetter = String()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        getAndSetCurrentLetter()
        }
    @IBAction func onTapped(_ sender: UITapGestureRecognizer) {
    let selectedPoint = sender.location(in: view)
        for label in wordLabel{
            if label.frame.contains(selectedPoint){
                label.text = "\(currentLetter)"
                print(currentLetter)
            }
        }
        counter += 1
        if counter == 26 {
            counter = resetCounter()
        }
        getAndSetCurrentLetter()
    }
    func getAndSetCurrentLetter() {
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
    }
    func resetCounter () -> Int {
        let alert = UIAlertController(title: "Reset Counter", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default){
            (action) in
            for label in self.wordLabel{
                label.text = "?"
            }
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        return 0
    }


}




























