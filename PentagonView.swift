//
//  PentagonView.swift
//  Navtest
//
//  Created by Luiz Fernando França on 06/01/19.
//  Copyright © 2019 Luiz Fernando França. All rights reserved.
//

import UIKit

class PentagonView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .clear
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        backgroundColor = .clear
    }
    
    override func draw(_ rect: CGRect) {
        let size = self.bounds.size
        let h = size.height * 0.4
        // calculate the 5 points of the pentagon
        let p1 = self.bounds.origin
        let p2 = CGPoint(x:p1.x + size.width, y:p1.y)
        let p3 = CGPoint(x:p2.x, y:p2.y + h)
        let p4 = CGPoint(x:size.width/2, y:size.height)
        let p5 = CGPoint(x:p1.x, y:h)
        
        // create the path
        let path = UIBezierPath()
        path.move(to: p1)
        path.addLine(to: p2)
        path.addLine(to: p3)
        path.addLine(to: p4)
        path.addLine(to: p5)
        path.close()
        
        let background = UIColor(red:0.18, green:0.20, blue:0.47, alpha:1.0)
        
        // fill the path
        background.set()
//        UIColor.red.set()
        path.fill()
    }
}
