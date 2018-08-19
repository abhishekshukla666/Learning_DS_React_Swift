//
//  DataAccess.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//

import Foundation
import CoreData

class DataAccess {
    
    static let sharedInstance = DataAccess()
    private init() { }
    
    lazy var persistanceContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "CoreDataDemo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error) \n \(error.userInfo)")
            }
        })
        return container
    }()
    
    func saveContext() {
        let context = persistanceContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch let nsError as NSError {
                fatalError("Unresolved Error: \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
