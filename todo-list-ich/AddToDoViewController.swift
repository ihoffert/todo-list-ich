//
//  AddToDoViewController.swift
//  todo-list-ich
//
//  Created by Ingrid Hoffert on 7/20/21.
//  Copyright © 2021 Ingrid Hoffert. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titletextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
        return
    }
    
    
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titletextField.text
        toDo.important = importantSwitch.isOn
        
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
