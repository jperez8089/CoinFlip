//
//  InterfaceController.swift
//  CoinFlip WatchKit Extension
//
//  Created by Javier Perez on 4/16/21.
//  Copyright © 2021 Javier Perez. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var flipLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    @IBAction func flipButton() {
        
        
        
        
        flipLabel.setText("Flipping the coin")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        
            
            self.flipLabel.setText("Flipping the coin...")
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.flipLabel.setText("Flipping the coin...")
                
                
                
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    let randomFlip = Bool.random()
                    
                    if (randomFlip) { // if true
                        
                        
                        self.flipLabel.setText("It's Heads")
                        
                        
                        
                    } else {// if false
                        
                        self.flipLabel.setText("It's Tails")
                        
                        
                        
                    }
                    
                }
                
            }
            }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
