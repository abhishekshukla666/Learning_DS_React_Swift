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
        
        let userEntity = NSEntityDescription.entity(forEntityName: "Users", in: context)
        let shiva = Users(entity: userEntity!, insertInto: context)
        shiva.username = "janvi"
        shiva.password = "janvipassword"
        shiva.age = 22
        
        let deviceEntity = NSEntityDescription.entity(forEntityName: "Devices", in: context)
        let iPhone = Devices(entity: deviceEntity!, insertInto: context)
        iPhone.deviceName = "samasun"
        iPhone.deviceType = "android"
        iPhone.owner = shiva
//        iPhone.save(device: context)
        
        shiva.devices = NSSet(object: iPhone)
//        shiva.save(context: context)
        
        guard let result = fetch(user: context, entityName: "Users") as? [Users] else { return }
        for user in result {
//            print(user.deviceName)
//            print(user.deviceType)
            print("User Details")
            print(user.username!)
            print(user.password!)
            print(user.age)
            
            if let count = user.devices?.count, count > 0 {
                if let devices = user.devices {
                    for device in devices {
                        if let device = device as? Devices {
                            print("Device details")
                            print(device.deviceName!)
                            print(device.deviceType!)
                        }
                    }
                }
            }
        }
    }
    
//    func save(user context: NSManagedObjectContext, entityName: String) {
//        guard let entity = NSEntityDescription.entity(forEntityName: entityName, in: context) else { return }
//        let newUser = Users(entity: entity, insertInto: context)
//        newUser.username = "janvi"
//        newUser.password = "janvipassowrd"
//        newUser.age = 22
//
//        do {
//            try context.save()
//        } catch let error {
//            print("Failed Saving: \(error)")
//        }
//    }
    
    func fetch(user context: NSManagedObjectContext, entityName: String) -> [Any]? {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: entityName)
//        request.predicate = NSPredicate(format: "username = %@", "shiva")
        do {
            let result = try context.fetch(request)
            return result
        } catch let error {
            print("Failing Fetching: \(error)")
        }
        return nil
    }
}

