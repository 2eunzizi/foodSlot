//
//  ViewController.swift
//  foodSlot
//
//  Created by Administrator on 6/25/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var spinButton: UIButton!
    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       background.image = UIImage(named: "table.jpg")
    }
    
   
    @IBAction func spinButton(_ sender: Any) {
        
        var generatedRandomNumber = Int(arc4random_uniform(13)) + 1
        
        let hopAnimation:[UIImage] = [
            UIImage(named: "food1.jpg")!,
            UIImage(named: "food2.jpg")!,
            UIImage(named: "food3.jpg")!,
            UIImage(named: "food4.jpg")!,
            UIImage(named: "food5.jpg")!,
            UIImage(named: "food6.jpg")!,
            UIImage(named: "food7.jpg")!,
            UIImage(named: "food8.jpg")!,
            UIImage(named: "food9.jpg")!,
            UIImage(named: "food10.jpg")!,
            UIImage(named: "food11.jpg")!,
            UIImage(named: "food12.jpg")!,
            UIImage(named: "food13.jpg")!,
            ]
        
        
        
        foodImg.animationImages = hopAnimation
        foodImg.animationDuration = 0.7
        foodImg.animationRepeatCount = 3
        foodImg.startAnimating()
        foodImg.image = UIImage(named: "food\(generatedRandomNumber).jpg")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

