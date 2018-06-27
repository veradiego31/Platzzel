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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       let boardWidth = Int(self.board.frame.width)
        
        tileWidth = boardWidth / 4
        
        for i in 0..<4 {
            let x = i * tileWidth
            for j in 0..<4 {
                let y = j * tileWidth
                let rect = CGRect(x: x, y: y, width: tileWidth - 2, height: tileWidth - 2)
                let tile = UILabel(frame: rect)
                tile.backgroundColor = UIColor.red
                self.board.addSubview(tile)
            }
            
        }
        
        
    }

   


}

