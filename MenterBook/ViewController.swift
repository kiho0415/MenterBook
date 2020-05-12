//
//  ViewController.swift
//  MenterBook
//
//  Created by 森田貴帆 on 2020/05/13.
//  Copyright © 2020 森田貴帆. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var courseLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", imageName: "nagata.jpg", course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう", imageName: "ryo.jpg", course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ", imageName: "taithi.JPG", course: "WebS,WebD"))
        
        setUI()
    }

   // override func didReceiveMemoryWarming(){//必要かわからいコード
      //  super.didReceiveMemoryWarning()
   // }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        nameLabel.text =  mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    @IBAction func mae(){
        index = index - 1
        setUI()
    }
    @IBAction func tugi(){
        index = index + 1
        setUI()
    }
    


    
}

