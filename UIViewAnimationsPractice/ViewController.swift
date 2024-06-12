//
//  ViewController.swift
//  UIViewAnimationsPractice
//
//  Created by Manyuchi, Carrington C on 2024/06/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var block: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            self.upMove()
        }
    }

    func upMove() {
        UIView.animate(withDuration: 1) {
            self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y: 0)
        } completion: { (success) in
            self.rightMove()
        }
    }
    
    func rightMove() {
        UIView.animate(withDuration: 1) {
            self.block.frame.origin = CGPoint(x: self.view.frame.size.width - self.block.frame.width, y: self.view.center.y - (self.block.frame.height / 2))
        } completion: { (success) in
            self.downMove()
        }
    }
    
    func downMove() {
        UIView.animate(withDuration: 1) {
            self.block.frame.origin = CGPoint(x: self.view.center.x - (self.block.frame.width / 2), y: self.view.frame.size.height - self.block.frame.height)
        } completion: { (success) in
            self.leftMove()
        }
    }
    
    func leftMove() {
        UIView.animate(withDuration: 1) {
            self.block.frame.origin = CGPoint(x: 0, y: self.view.center.y - (self.block.frame.height / 2))
        } completion: { (success) in
            self.resetMove()
        }
    }
    
    func resetMove() {
        
        UIView.animate(withDuration: 1) {
            self.block.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
        }
    }
    
}

