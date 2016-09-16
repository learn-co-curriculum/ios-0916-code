//
//  ViewController.swift
//  playingWithDictionaries
//
//  Created by Johann Kerr on 9/16/16.
//  Copyright © 2016 Johann Kerr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var code: [String:String] = [:]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        code = [
            "a" : "🐶",
            "b" : "🐱",
            "c" : "🐭",
            "d" : "🐹",
            "e" : "🐰",
            "f" : "🐻",
            "g" : "🐼",
            "h" : "🐨",
            "i" : "🐯",
            "j" : "🦁",
            "k" : "🦁",
            "l" : "🐮",
            "m" : "🐽",
            "n" : "🐙",
            "o" : "🐸",
            "p" : "🐵",
            "q" : "🙈",
            "r" : "🙉",
            "s" : "🙊",
            "t" : "🐒",
            "u" : "🐔",
            "v" : "🐧",
            "w" : "🐦",
            "x" : "🐤",
            "y" : "🐣",
            "z" : "🐺"
        ]
        
//        self.code = [
//            "a" : "b",
//            "b" : "c",
//            "c" : "d",
//            "d" : "e",
//            "e" : "f",
//            "f" : "g",
//            "g" : "h",
//            "h" : "i",
//            "i" : "j",
//            "j" : "k",
//            "k" : "l",
//            "l" : "m",
//            "m" : "n",
//            "n" : "o",
//            "o" : "p",
//            "p" : "q",
//            "q" : "r",
//            "r" : "s",
//            "s" : "t",
//            "t" : "u",
//            "u" : "v",
//            "v" : "w",
//            "w" : "x",
//            "x" : "y",
//            "y" : "z",
//            "z" : "a"
//        ]
 

    }

    @IBAction func convertBtnPressed(_ sender: AnyObject) {
        
        //get textfield value through self.textfield
        textLabel.text = self.textField.text
        
        var encodedMessage = ""
        
        var spyMessage = self.textField.text
        if let unwrappedSpyMessage = self.textField.text{
            var lowerCaseMessage = unwrappedSpyMessage.lowercased()
            for char in lowerCaseMessage.characters{
                var character = "\(char)"
                if let encodedChar = self.code[character]{
                    encodedMessage += encodedChar
                }else{
                    encodedMessage += character
                    // This should be a space
                }
            }
        }
        
        print(encodedMessage)
//        for char in (self.textField.text?.lowercased().characters)!{
//            var character = "\(char)"
//            print(character)
//            
//            print(self.code[character])
//            print(char)
//        }
        
        
        
        print(self.textField.text)
    }
    

}

