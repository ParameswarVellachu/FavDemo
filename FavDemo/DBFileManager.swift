//
//  DBFileManager.swift
//  FavDemo
//
//  Created by Parameswaran on 20/09/24.
//

import Foundation

class DBFileManager {
    static let shared = DBFileManager()
    private init() {}
    
    func saveData () {
        
        let arr: NSArray = [["name":"params",
                    "age":"30",
                    "regid":"dtpl100",
                    "designation":"ios-lead",
                    "location":"chennai"],
                    ["name":"params1",
                                "age":"39",
                                "regid":"dtpl101",
                                "designation":"ios-lead",
                                "location":"salem"]]
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
        let documentDir = paths.object(at: 0) as! NSString
        let path = documentDir.appendingPathComponent("personlist.plist")
//        var dict: NSMutableArray()
        //save values
        arr.write(toFile: path, atomically: false)
    }
    

    
    func writePlist() {
        let userNameList = ["Narayanan","Jaya","Kanna","Chandrika","Siva","Raj","Srini","Rajini","Padma","Swarga","Params"]
        savePropertyList(userNameList)
    }
    
    
    func savePropertyList(_ plist: [String])
    {
        let path = Bundle.main.path(forResource: "UserList", ofType: "plist")!
        let url = URL(fileURLWithPath: path)
        do{
            let data = try PropertyListSerialization.data(fromPropertyList: plist, format: .xml, options: 0)
            try data.write(to: url)
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func loadPropertyList() -> [String]?
    {
        let path = Bundle.main.path(forResource: "UserList", ofType: "plist")!
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            guard let array = try PropertyListSerialization.propertyList(from: data, format: nil) as? [String] else{
                return []
            }
            return array
        }
        catch{
            print(error.localizedDescription)
        }
        return []
    }
}
