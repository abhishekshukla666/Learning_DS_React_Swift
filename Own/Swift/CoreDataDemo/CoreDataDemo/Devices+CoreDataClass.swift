//
//  Devices+CoreDataClass.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Devices)
public class Devices: NSManagedObject {

    func save(device context: NSManagedObjectContext) {
        do {
            try context.save()
        } catch let error {
            print("Error Saving Device: \(error)")
        }
    }
}
