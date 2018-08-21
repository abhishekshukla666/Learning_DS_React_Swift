//
//  Users+CoreDataClass.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Users)
public class Users: NSManagedObject {
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch let error {
            print("Failed Saving: \(error)")
        }
    }
    
    func delete(context: NSManagedObjectContext) {
        context.delete(self)
    }
}
