//
//  Menter.swift
//  MenterBook
//
//  Created by 森田貴帆 on 2020/05/13.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class Mentor{
    var course: String!
    var name: String!
    var imageName: String!//画像の名前
    
    //初期化　引数でコース、名前、画像をもらって設定 必要な要素は初めに設定しちゃう
    init(name: String, imageName: String, course: String) {
        self.name = name
        self.course = course
        self.imageName = imageName
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
}
