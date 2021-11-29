//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Birkan Pusa on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var bdayLabel: UITextField!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var bDay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBday = UserDefaults.standard.object(forKey: "birthday")
   
        //casting as? vs as! ? yapabilirsen ! kesinlikle yap
        if let newName = storedName as? String{
            name.text = "Name : \(newName)"
        }
        
        if let newBirthday = storedBday as? String{
            bDay.text = "Birtday :\(newBirthday)"
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        
        UserDefaults.standard.set(nameLabel.text!, forKey: "name")
        UserDefaults.standard.set(bdayLabel.text!, forKey: "birthday")
        name.text = "Name : \(nameLabel.text!)"
        bDay.text = "Birthday : \(bdayLabel.text!)"
    }
    
    @IBAction func clearButton(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBday = UserDefaults.standard.object(forKey: "birthday")
        
        if (storedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
            name.text = "Name :"
        }
    
        if (storedBday as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "birthday")
            bDay.text = "Birthday : "
        }
        
    }
    
}

