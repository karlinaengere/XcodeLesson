//
//  ViewController.swift
//  TodoList
//
//  Created by karlina.engere on 04/02/2021.
//

import UIKit
import CoreData

class TodoTableViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var todoList = [Todo]()
    var context: NSManagedObjectContext?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
    }


}

private func addNewItem(){
    let alertController = UIAlertController(title: "Add New List.", message: "What do you want to ad?"), preferredStyle: .alert)
    
    alertController.addTextField { (textField: UITextField) in
        textField.placeholder = "Enter the tittle"
        textField.autocapitalizationType = .sentences
        textField.autocorrectionType = .NSManagedObjectContext?
}

    let addAction = UIAlertAction(title: "Add", style: .cancel) { (action: UIAlertAction) in
        let textField = alertController.textFields?.first
        
        let entity = NSEntityDescription.entity(forEntityName: Todo, in: self.context!)
        let item = NSManagedObject(entity: entity!, insertInto: self.context)
        item.setValue(textField?.text,forKey: "item"
        
        //save func
        let cancelAction = UIAlertAction(title:  "Cancel", style: .destructive, handler: nil)
                      alertController.assAction(addAction)
                      present(alertController, animated: true)
        
        func loadData(){
            let request: NSFetchRequest<Todo> = Todo.fetchRequest()
            do{
                let result = try context?.fetch(request)
                todoLIst  result
            }catch{
            }
        }
        
        self.saveData(){
            do {
                try self.context?.save()
            }catch{
                fatalError(error.localizedDescription)
            }
        }
        
    }
    
    
    //MARK: - Table view data source
    
         func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return todoList.count
        }
         func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell",for: indexPath)
            cell.autocorrectionType = Item.completed ? .checkmark : .NSManagedObjectContext?
            
            return cell
        }
    
    //mark: 
    
}
