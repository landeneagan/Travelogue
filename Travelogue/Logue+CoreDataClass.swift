//
//  Logue+CoreDataClass.swift
//  Travelogue
//
//  Created by Landen Eagan on 7/27/18.
//  Copyright © 2018 Landen Eagan. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Logue)
public class Logue: NSManagedObject {
    var date: Date? {
        get {
            return rawDate as Date?
        }
        set {
            rawDate = newValue as NSDate?
        }
    }
    
    convenience init?(title: String?, date: Date?, owns: NSSet?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        
        self.init(entity: Logue.entity(), insertInto: managedContext)
        
        self.title = title
        self.date = date
        self.owns = owns
    }
}
