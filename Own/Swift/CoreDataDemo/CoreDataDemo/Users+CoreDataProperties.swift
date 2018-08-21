//
//  Users+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Abhishek Shukla on 19/08/18.
//  Copyright © 2018 Abhishek Shukla. All rights reserved.
//
//

import Foundation
import CoreData


extension Users {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Users> {
        return NSFetchRequest<Users>(entityName: "Users")
    }

    @NSManaged public var age: Int16
    @NSManaged public var password: String?
    @NSManaged public var username: String?
    @NSManaged public var devices: NSSet?

}

// MARK: Generated accessors for devices
extension Users {

    @objc(addDevicesObject:)
    @NSManaged public func addToDevices(_ value: Devices)

    @objc(removeDevicesObject:)
    @NSManaged public func removeFromDevices(_ value: Devices)

    @objc(addDevices:)
    @NSManaged public func addToDevices(_ values: NSSet)

    @objc(removeDevices:)
    @NSManaged public func removeFromDevices(_ values: NSSet)

}
