//
//  CardDataController.swift
//  AutoHome
//
//  Created by Sandeep on 12/10/23.
//

import Foundation
import CoreData

class CardDataController:ObservableObject{
    let container = NSPersistentContainer(name: "CardDataModel")
    init(){
        container.loadPersistentStores { des, error in
            if let error = error{
                print("Failed to load the data\(error.localizedDescription)")
            }
        }
    }
    
    
    func save(context:NSManagedObjectContext){
        do{
            try context.save()
            print("Data Saved !!!")
        }catch{
            print("There is some issue in save Data !!!")
        }
    }
}
