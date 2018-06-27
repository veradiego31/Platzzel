//
//  ViewController.swift
//  Platzzel
//
//  Created by Diego on 6/26/18.
//  Copyright © 2018 veradiego31. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var board: UIView!
    var tileWidth: Int = 0
    var tileCenterX: Int = 0
    var tileCenterY: Int = 0
    
    var tileCenterArray : NSMutableArray = []
    var tileArray : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       makeTiles()
        
        
    }
    
    func makeTiles(){
        let boardWidth = Int(self.board.frame.width)
        self.tileWidth = boardWidth / 4
        self.tileCenterX = tileWidth / 2
        self.tileCenterY = tileWidth / 2
        var tileNumber = 0
        
        for _ in 0..<4 {
            
            for _ in 0..<4 {
                let rect = CGRect(x: 0, y: 0, width: tileWidth, height: tileWidth)
                let tile = UILabel(frame: rect)
                tile.backgroundColor = UIColor.red
                let currentCenter = CGPoint(x: self.tileCenterX, y: tileCenterY)
                tile.center = currentCenter
                
                self.tileCenterArray.add(currentCenter)
                
                self.board.addSubview(tile)
                
                tileNumber += 1
                tile.text = "\(tileNumber)"
                
                self.tileArray.add(tile)
                
                self.tileCenterX += self.tileWidth
            }
            
            self.tileCenterX = self.tileWidth / 2
            self.tileCenterY += self.tileWidth
            
        }
        
        
        
        let lastTile = self.tileArray.lastObject as! UILabel
        
        lastTile.removeFromSuperview()
        
        self.tileCenterArray.removeObject(at: 15)
        self.tileArray.removeObject(at: 15)
    }

   


}

