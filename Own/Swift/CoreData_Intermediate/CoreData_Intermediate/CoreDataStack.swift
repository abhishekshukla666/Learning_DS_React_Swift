//
//  CoreDataStack.swift
//  CoreData_Intermediate
//
//  Created by Abhishek on 21/08/18.
//  Copyright © 2018 AbhishekShukla. All rights reserved.
//

import Foundation
import CoreData

class CoreDataStack: NSObject {
    static let moduleName = "myDevices"
    
    lazy var managedObjectModel: NSManagedObjectModel? = {
        guard let modelUrl = Bundle.main.url(forResource: CoreDataStack.moduleName, withExtension: "momd") else { return nil }
        let model = NSManagedObjectModel(contentsOf: modelUrl)
        return model
    }()
    
    lazy var appDocumentDirectory: URL? = {
        guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last else { return nil }
        return url
    }()
    
    lazy var persistanceStoreCoordinate: NSPersistentStoreCoordinator? = {
        guard let managedObjectModel = managedObjectModel else { return nil }
        guard let applicationDirectory = appDocumentDirectory else { return nil }
        let coordinate = NSPersistentStoreCoordinator(managedObjectModel: managedObjectModel)
        
        let persistanceStoreUrl = applicationDirectory.appendingPathComponent("\(CoreDataStack.moduleName).sqlite")
        do {
            
        } catch let error {
            print("Persistance store error: \(error)")
        }
        return coordinate
    }()
    
    
}
