//
//  ViewController.swift
//  ChessNow
//
//  Created by Johannes Berge on 21/11/14.
//  Copyright (c) 2014 Johannes Berge & Alexander Panayotov. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    var cellWidth = 57
    var cellHeight = 57
    var squares = 64
    var leftX = 100
    var topY = 100
    
    var row = 0,col=0;
    var firstColor = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cellWidth = 44;
        cellHeight = cellWidth;
        topY = 330-4*cellHeight;
        leftX = 187-4*cellWidth;
        
/* for (i=1; i<=64; i++) {
if (firstColor == 0) {
gridCell[i] = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"graySquare.png"]];
} else {
gridCell[i] = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"whiteSquare.png"]];
}

onTopOfCell[49] = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"whitePawn.png"]];

gridCell[i].frame = CGRectMake(leftX+cellWidth*col, topY+cellHeight*row, cellWidth, cellHeight);
[self.view addSubview:gridCell[i]];
onTopOfCell[i].frame = CGRectMake(leftX+cellWidth*col, topY+cellHeight*row, cellWidth, cellHeight);
[self.view addSubview:onTopOfCell[i]];

col= col+1;
firstColor = 1- firstColor;
if(col >7) {
row += 1;
firstColor = 1-firstColor;
col = 0;
}

gridCell[i].userInteractionEnabled = YES;
gridCell[i].multipleTouchEnabled = YES;

}
*/
        
    }
    
    /*

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
UITouch *touch = [[event allTouches] anyObject];

int i;
for (i=1; i<=squares; i++) {
if ([touch view] ==gridCell[i]) {
onTopOfCell[49].frame = gridCell[41].frame;
[self.view addSubview:onTopOfCell[i]];
[self.view addSubview:gridCell[i]];


}
}

}

*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
