//
//  Note+CoreDataProperties.swift
//  core-data-sample
//
//  Created by Jammi, Harikant on 08/07/24.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var text: String?

}
