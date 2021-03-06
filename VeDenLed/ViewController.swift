//
//  ViewController.swift
//  VeDenLed
//
//  Created by Luong Tiem on 7/11/16.
//  Copyright © 2016 LuongTiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txt_Nhap: UITextField!
    
    let SpaceBall : CGFloat = 50
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    //-- Ve ball
    
    @IBAction func btnDraw(sender: AnyObject) {
        
        
        if let Numberball = txt_Nhap.text {
            
            drawBall(Int(Numberball)!)
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    func drawBall(value : Int ) {
        
        
        for index_Hang in 0..<value  {
            
            for index_Cot in 0..<value {
                
                    let img = UIImage(named: "green")
                    let ball = UIImageView(image: img)
                    ball.center = CGPointMake( SpaceBall + CGFloat(index_Hang) * SpaceBetweenBallWidth(value)  , CGFloat(index_Cot) * SpaceBetweenBallHeight(value) + SpaceBall)
                    self.view.addSubview(ball)
            
                
        }
        }
        
      
       
        
    }
    
    func SpaceBetweenBallWidth(value : Int ) -> CGFloat{
        
        let SpaceWidth = ((self.view.bounds.size.width) - (2 * SpaceBall) ) / CGFloat(value - 1 )
        return SpaceWidth
        
    }
    func SpaceBetweenBallHeight(value : Int) -> CGFloat {
        
        let SpaceHeight  = ((self.view.bounds.size.height) - (2 * SpaceBall)) / CGFloat(value - 1)
        return SpaceHeight
    }
 
    
    
   
}

