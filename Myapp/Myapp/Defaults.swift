//
//  Defaults.swift
//  Myapp
//
//  Created by Deemsys on 10/14/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import Foundation

struct UserDefaultsValue {
    
    static func saveUserData(value:String,key:String){
//        example: value="Moni", key = "UserName"
        UserDefaults.standard.set(value,forKey: key)
    }
    
    static func clearUserData(key:String){
//   Remove key value in userDefaults => key = "UserName" to remove the user name
        UserDefaults.standard.removeObject(forKey:key)
    }
}
