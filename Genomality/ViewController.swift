//
//  ViewController.swift
//  Genomality
//
//  Created by Tinh Dang on 10/21/17.
//  Copyright © 2017 Tinh Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
       print( getDataforUser(user: "10.23andme.903"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    //Convert excel file to plist
    //Extract an array from plist for each user
    //https://www.youtube.com/watch?v=M2Z9YrPbrbg
    func loadUserData(name: String) -> (Array<Dictionary<String, String>>) {
        let path = Bundle.main.path(forResource: name, ofType: "plist")
        
        var array : NSArray?
        
        array = NSArray(contentsOfFile: path!)
        
        return (array as? Array<Dictionary<String, String>>)!
        
    }
    
    //Extract a row of data for a particular value in a column
    func getDataforUser(user: String)->(Array<[String:String]>)
    {
        let array = loadUserData(name: "phenotypeScores")
        let namePredicate = NSPredicate(format: "username = %@", user)
        return [array.filter {namePredicate.evaluate(with: $0)} [0]]
    }

}
