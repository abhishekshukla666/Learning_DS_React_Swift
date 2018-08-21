//
//  Devices+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//
//

import Foundation
import CoreData


extension Devices {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Devices> {
        return NSFetchRequest<Devices>(entityName: "Devices")
    }

    @NSManaged public var deviceType: String?
    @NSManaged public var deviceName: String?
    @NSManaged public var owner: Users?

}
