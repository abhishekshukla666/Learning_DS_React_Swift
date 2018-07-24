import Foundation
import UIKit

/*
 ------------------------------------------ Draw Circle ------------------------------------------
 */

class CircleView: UIView {
    
    override func draw(_ rect: CGRect) {
        
        let path = UIBezierPath()
        
        let radius: Double = Double(rect.width / 2) - 20.0
        let center = CGPoint(x: rect.width / 2, y: rect.height / 2)
        
        path.move(to: CGPoint(x: center.x + CGFloat(radius), y: center.y))
        
        for i in stride(from: 0, to: 361.0, by: 1) {
            
            // radians = degree * PI / 180
            
            let radian = i * Double.pi / 180
            
            let x = Double(center.x) + radius * cos(radian)
            let y = Double(center.y) + radius * sin(radian)
            
            path.addLine(to: CGPoint(x: x, y: y))
            print(x, y)
        }
        path.lineWidth = 3
        path.stroke()
    }
}

let circleView = CircleView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
circleView.backgroundColor = .white

