//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Abhinav Bisen on 6/6/18.
//  Copyright (c) 2018 Vaidehi R. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate  {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(sender: UIButton){
        taskMgr.addTask(txtTask.text, desc:txtDesc.text);
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
       // self.tabBarController.selectedIndex = 0;
    }
    
    //iOS touch function
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
       self.view.endEditing(true)
    }
    
    //UITextField Delegate
    func textFieldShouldClear(textField: UITextField) -> Bool{
        
        textField.resignFirstResponder();
        return true
    }
    //optional func textFieldShouldReturn(textField: UITextField) -> Bool
}

