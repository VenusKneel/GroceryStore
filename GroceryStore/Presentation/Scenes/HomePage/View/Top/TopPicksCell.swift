//
//  TopPicksCell.swift
//  GroceryStore
//
//  Created by Baxva Jakeli on 06.07.21.
//

import UIKit

class TopPicksCell: UITableViewCell {
    
    @IBOutlet weak var topView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    @IBAction func onMenu(_ sender: Any) {
    }
    
    //MARK: - ბეზიერით მინდოდა გაკეთება და ეს კოდი აჩენდა ყველაფერს მაგრამ მერე ლეიბლები და ბათონები აღარ ჩანდა არადა 3დ სიმულატორზე რომ ვნახულობდი ვფიქრობ უნდა გამოჩენილიყო
    
//    private func addCenter() {
//        let circlePath = UIBezierPath(arcCenter: CGPoint(x: contentView.bounds.width / 2 , y: 20), radius: CGFloat(243), startAngle: CGFloat(0), endAngle: CGFloat(Double.pi * 2), clockwise: true)
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.path = circlePath.cgPath
//        shapeLayer.fillColor = UIColor(named: "Green")?.cgColor
//        shapeLayer.strokeColor =  UIColor(named: "Green")?.cgColor
//        shapeLayer.lineWidth = 3.0
//        topView.layer.addSublayer(shapeLayer)
//    }
    
}
