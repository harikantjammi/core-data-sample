//
//  File.swift
//  
//
//  Created by Jammi, Harikant on 08/07/24.
//

import Foundation
import CoreData

public class NotesPersistentContainer: NSPersistentContainer {
    
    public static var persistentContainer: NotesPersistentContainer! = {
        let modelURL = Bundle.module.url(forResource: "Model", withExtension: "momd")!
        let model = NSManagedObjectModel(contentsOf: modelURL)!
        let container = NotesPersistentContainer(name: "Model", managedObjectModel: model)
        container.loadPersistentStores { desc, error in
            print(error)
        }
        
        return container
    }()
    
}

