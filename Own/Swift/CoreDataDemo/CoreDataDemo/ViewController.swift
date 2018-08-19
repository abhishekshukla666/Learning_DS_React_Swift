//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataAccess = DataAccess.sharedInstance
        let context = dataAccess.persistanceContainer.viewContext
        
//        save(user: context, entityName: "Users")
        guard let result = fetch(user: context, entityName: "Users") as? [NSManagedObject] else { return }
        for user in result {
            print("User Details: \n username:\(String(describing: user.value(forKey: "username")))")
            print("password: \(String(describing: user.value(forKey: "password")))")
            print("age: \(user.value(forKey: "age") ?? 0)")
        }
    }
    
    func save(user context: NSManagedObjectContext, entityName: String) {
        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: context) else { return }
        let newUser = NSManagedObject(entity: entity, insertInto: context)
        newUser.setValue("shiva", forKey: "username")
        newUser.setValue("passwordShiva", forKey: "password")
        newUser.setValue(27, forKey: "age")
        
        do {
            try context.save()
        } catch let error {
            print("Failed Saving: \(error)")
        }
    }
    
    func fetch(user context: NSManagedObjectContext, entityName: String) -> [Any]? {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
        request.predicate = NSPredicate(format: "username = %@", "shiva")
        do {
            let result = try context.fetch(request)
            return result
        } catch let error {
            print("Failing Fetching: \(error)")
        }
        return nil
    }
}

