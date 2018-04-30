//
//  CoraDataHandler.swift
//  TasksApp
///Users/azzaz/Desktop/IosWithSwift/TasksApp/TasksApp.xcodeproj
//  Created by azzaz on 4/6/18.
//  Copyright © 2018 azzaz. All rights reserved.
//

import UIKit
import CoreData
class CoreDataHandler:NSObject{
    
    
    
    //NSManagedObjectContext is obj from coreData
    fileprivate class    func gitAppDelegateObject ()->NSManagedObjectContext{
        let appDelegateObj = UIApplication.shared.delegate as! AppDelegate
        return appDelegateObj.persistentContainer.viewContext
    }
    
    //function to save data
    
    class  func saveData(parameters :[String : String]) -> Bool {
        let context = gitAppDelegateObject()  // createobj  from coreData
        let entity  = NSEntityDescription.entity(forEntityName: "User", in: context)
        let mangedObject = NSManagedObject(entity: entity!, insertInto: context)
        //set vales
        mangedObject.setValue(parameters["firstName"]!, forKey: "firstName")
        mangedObject.setValue(Int (parameters["Age"]!), forKey: "age")
        mangedObject.setValue(parameters["lastName"]!, forKey: "lastName")
        mangedObject.setValue(parameters["Email"]!, forKey: "Email")
        
        do {
            try context.save()
            return true
        }
        catch{
            print("Error")
            return false
            
        }
        
    }
    
    class func fetchData()->[User]?{
        let context = gitAppDelegateObject()
        var arrayOfUsers : [User]?
        
        do {
            arrayOfUsers = try context.fetch(User.fetchRequest())
            return arrayOfUsers
        }
        catch
        {
            return arrayOfUsers
        }
        
    }
    //class
}










