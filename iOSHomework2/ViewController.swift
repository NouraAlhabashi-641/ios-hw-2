//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        
        membersNamesArray.append(member)
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
       
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        var functionCall = secretNameLetter(memberNameArry: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
var functionCall = secretNameEmoji(membersNameArry: membersNamesArray)
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter(memberNameArry :[String]) -> String{
        var firsrtLetterArray: [String] = []
        for memberName in membersNamesArray {
            firsrtLetterArray.append(String (memberName.prefix(1)))
            print(firsrtLetterArray.joined())
        }
        membersNamesArray.removeAll()
        
        return firsrtLetterArray.joined().uppercased()
    }
    // MARK: -   النهاية
    func secretNameEmoji(membersNameArry : [String]) -> String {
     let emojiDicionaryEnglish = [ "A": "🥰", "B": "😳", "C": "🤯", "D": "🥺", "E": "🐶", "F": "🐣", "G": "🐧", "H": "❌", "I": "🐋", "J": "🌈", "K": "🍟", "L": "🌯", "M": "🍔", "N": "🍕", "O": "🍭", "P": "🧃", "Q": "🏸", "R": "🎹", "S": "📸", "T": "💸", "U": "📝", "V": "🤍", "W": "💤", "X": "Ⓜ️", "Y": "🃏", "Z": "🌭" ]
     var emojiLetterArray: [String] = []
     for i in membersNameArry {
         let firstLetter = String(i.prefix(1))
         for (letter,emoji) in emojiDicionaryEnglish {
             if letter == firstLetter {
                 emojiLetterArray.append(emoji)
                 print(emojiLetterArray.joined())
             }
         }
     
     }
    

    return emojiLetterArray.joined()
         
        }
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله

    
    

    // MARK: -   النهاية
    
    
    





}

