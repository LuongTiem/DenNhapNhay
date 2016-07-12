//
//  VeDenLed.swift
//  VeDenLed
//
//  Created by ReasonAmu on 7/12/16.
//  Copyright © 2016 LuongTiem. All rights reserved.
//

import UIKit

class VeDenLed: UIViewController {

    
    let SpaceBall : CGFloat = 50
    var timer = NSTimer()
    var checkBien = true
    var DenledCuoiHang = -1
    var DenledCuoiCot = -1

    override func viewDidLoad() {
        super.viewDidLoad()
         drawBall(5)
       timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(VeDenLed.RunningLed), userInfo: nil, repeats: true)
       
    }


    
    func RunningLed(){
        
       
        
        DenNhay2Chieu()
      
        
     //   DenLedChayHinhVuong()
        
     
     
       
        
        }
   
    
    
    func DenLedChayHinhVuong (){
      
            
       //  NhayTuTrenXuongDuoi()
        
        
    

    }
    
    func DenNhay2Chieu() {
        
        if(checkBien == true){
          
            NhayTuTraiQuaPhai()
            if(DenledCuoiHang == 4){
                checkBien = false
            }
        }else{
            NhayTuPhaiQuaTrai()
            if(DenledCuoiHang == 0){
                checkBien = true
            }
        }
        
    
        
        
    }
    
    func NhayTuTraiQuaPhai(){
        
        if(DenledCuoiHang != -1){
            
            OfLedHang()
        }
        if(DenledCuoiHang != 5) {
            
            DenledCuoiHang = DenledCuoiHang + 1
            
        }
        OnLedHang()
        
        
    }
    
    func NhayTuPhaiQuaTrai(){
        
        if(DenledCuoiHang != 5){
            OfLedHang()
            
        }
        if(DenledCuoiHang != -1) {
            
            DenledCuoiHang = DenledCuoiHang - 1
        }
        
        OnLedHang()
    }
    
    
    func NhayTuTrenXuongDuoi() {
        
        if (DenledCuoiCot != -1 ){
            OfLedCot()
        }
        if(DenledCuoiCot != 5){
            DenledCuoiCot = DenledCuoiCot + 1
        }
        
        OnLedCot()
        
    }
    
    func NhayTuDuoiLenTren() {
        
        if (DenledCuoiCot != 5) {
            OfLedHang()
        }
        
        if(DenledCuoiCot != -1){
            DenledCuoiCot = DenledCuoiCot - 1
        }
        
        OnLedHang()
    }
    
    func OfLedCot() {
        
        if let ledOffCot  = self.view.viewWithTag(100 ) as? UIImageView{
            
            ledOffCot.image = UIImage(named: "grey")
        }
    
    
    }
    
    func OnLedCot(){
        if let ledOnCot = self.view.viewWithTag(100) as? UIImageView{
            
            ledOnCot.image = UIImage(named: "green")
        }
        
        
    }
    
    func OfLedHang(){
        
        if let ledOff = self.view.viewWithTag(100  + DenledCuoiHang ) as? UIImageView{
            
            ledOff.image = UIImage(named: "grey")
        }
        
    }
    
    func OnLedHang() {
        if let ledOn = self.view.viewWithTag(100 + DenledCuoiHang ) as? UIImageView{
            
            ledOn.image = UIImage(named: "green")
        }
      
       
    }
    
    
    func drawBall(value : Int ) {
        
        
        for index_Hang in 0..<value  {
            
            for index_Cot in 0..<value {
                
                let img = UIImage(named: "green")
                let ball = UIImageView(image: img)
                ball.center = CGPointMake( SpaceBall + CGFloat(index_Hang) * SpaceBetweenBallWidth(value)  , CGFloat(index_Cot) * SpaceBetweenBallHeight(value) + SpaceBall)
                ball.tag = 100  + (value * index_Cot) + index_Hang
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
