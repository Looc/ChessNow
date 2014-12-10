//
//  ViewController.swift
//  ChessNow
//
//  Created by Johannes Berge on 21/11/14.
//  Copyright (c) 2014 Johannes Berge & Alexander Panayotov. All rights reserved.
//

import UIKit
import SpriteKit

let screenSize: CGRect = UIScreen.mainScreen().bounds
let screenWidth = screenSize.width
let screenHeight = screenSize.height
let pieceSize = sqrt(screenWidth * screenWidth / 64)
var timerNumber = 0.1
var movementTimer = NSTimer()


class ViewController: UIViewController {
	
	let objc = Objective_C()

    
    @IBOutlet weak var image1: UIImageView!
	
	@IBOutlet weak var chessBoard: UIImageView!

    @IBAction func button(sender: AnyObject)
	{
		movementTimer.invalidate()
	timerNumber = 0.1
		movementTimer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("updateMovementTimer"), userInfo: nil, repeats: true)

    }
    
	override func viewDidLoad() {

		var tab = self.tabBarController?.tabBar
		tab?.barStyle = UIBarStyle.Black
		var nav = self.navigationController?.navigationBar
		nav?.barStyle = UIBarStyle.BlackTranslucent
        
//		var startPositionx = chessBoard.frame.origin.x
//		var startPositiony = chessBoard.frame.origin.y
//		image1.frame = CGRect(x: startPositionx, y: startPositiony, width: pieceSize, height: pieceSize)

		
		
        println("\(screenHeight) is the height and \(screenWidth) is the width. \(screenSize) is the screensize")
        
    }
	
	func updateMovementTimer() {
		timerNumber++
		if timerNumber >= 20 {
			movementTimer.invalidate()
println("the timer stopped")

		}
		else {
		println("the timer started")

		var positionx = image1.frame.origin.x
		var positiony = image1.frame.origin.y
		
		positiony -= screenWidth  / 8 * 0.05
		image1.frame = CGRect(x: positionx, y: positiony, width: pieceSize, height: pieceSize)
		
		}

	
	}
	
	class View: UIView {
	
	
	}
	
}
