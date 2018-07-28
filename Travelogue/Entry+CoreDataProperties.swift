//
//  Entry+CoreDataProperties.swift
//  Travelogue
//
//  Created by Landen Eagan on 7/27/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var title: String?
    @NSManaged public var rawDate: NSDate?
    @NSManaged public var image: NSData?
    @NSManaged public var entryDescription: String?
    @NSManaged public var owner: Logue?

}
