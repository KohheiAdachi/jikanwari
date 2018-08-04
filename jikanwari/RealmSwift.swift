//
//  RealmSwift.swift
//  jikanwari
//
//  Created by Kohei Adachi on 2018/08/03.
//  Copyright © 2018年 Kohei Adachi. All rights reserved.
//

import Foundation
import RealmSwift

class Subject: Object {
    @objc dynamic var name = "";
    @objc dynamic var id : Int = 0;
    // idをプライマリキーに設定
    override static func primaryKey() -> String? {
        return "id"
    }
    
    class func getdata(index :Int) -> String{
        var objdata = ""
        do{
            let realm = try! Realm()
            let obj = realm.object(ofType: Subject.self, forPrimaryKey: index)
            //            print(obj?.id)
            //            print(obj?.name)
            if (obj?.name != nil){
                objdata = (obj?.name)!
            }
            else{
                objdata = ""
            }
        }
        catch{
            print("Extension Error")
        }
        
        return objdata
    }
    
    
}