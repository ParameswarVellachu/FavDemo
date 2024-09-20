//
//  ViewController.swift
//  FavDemo
//
//  Created by Parameswaran on 27/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userTableList: UITableView!
    
    let userNameList = ["Narayanan","Jaya","Kanna","Chandrika","Siva","Raj","Srini","Rajini","Padma","Swarga","Params"]
    
    var bookmarkList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userNameList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = userTableList.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = userNameList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let userL = userNameList[indexPath.row]
        
        if bookmarkList.isEmpty {
            bookmarkList.append(userNameList[indexPath.row])
            return
        }
        
        
        if (bookmarkList.firstIndex(where: {$0 == userL}) != nil) {
            print("existing user:\(userL)")
            let alert = UIAlertController(title: "Bookmark", message: "user already exists", preferredStyle: .alert)
//                alert.addAction(UIAlertAction(title: userB, style: .default, handler: doSomething))
            
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
                        //Cancel Action
                    }))
            alert.addAction(UIAlertAction(title: "OK",
                                          style: UIAlertAction.Style.default,
                                          handler: {(_: UIAlertAction!) in
                                            //Sign out action
            }))
            
            DispatchQueue.main.async {
                self.present(alert, animated: false, completion: nil)
            }
            return
        }
                                            
        
        
//        for ndex in 0..<bookmarkList.count {
//            let userB = bookmarkList[ndex]
//            if userB == userL {
//                print("existing user:\(userB)")
//                let alert = UIAlertController(title: "Bookmark", message: "user already exists", preferredStyle: .alert)
////                alert.addAction(UIAlertAction(title: userB, style: .default, handler: doSomething))
//                
//                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
//                            //Cancel Action
//                        }))
//                alert.addAction(UIAlertAction(title: "OK",
//                                              style: UIAlertAction.Style.default,
//                                              handler: {(_: UIAlertAction!) in
//                                                //Sign out action
//                }))
//                
//                DispatchQueue.main.async {
//                    self.present(alert, animated: false, completion: nil)
//                }
//                return
//            }
//        }
        bookmarkList.append(userL)
        print(bookmarkList)
        
    }
    
//    func doSomething(action: UIAlertAction) {
//        //Use action.title
//        print(action.title)
//    }
    
}



