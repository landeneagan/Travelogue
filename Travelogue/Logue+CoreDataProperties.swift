//
//  Logue+CoreDataProperties.swift
//  Travelogue
//
//  Created by Landen Eagan on 7/27/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//
//

import Foundation
import CoreData


extension Logue {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Logue> {
        return NSFetchRequest<Logue>(entityName: "Logue")
    }

    @NSManaged public var title: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var owns: NSSet?

}

// MARK: Generated accessors for owns
extension Logue {

    @objc(addOwnsObject:)
    @NSManaged public func addToOwns(_ value: Entry)

    @objc(removeOwnsObject:)
    @NSManaged public func removeFromOwns(_ value: Entry)

    @objc(addOwns:)
    @NSManaged public func addToOwns(_ values: NSSet)

    @objc(removeOwns:)
    @NSManaged public func removeFromOwns(_ values: NSSet)

}
