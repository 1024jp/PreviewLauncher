//
//  ReceiveCommand.swift
//  Satellite
//
//  Created by 1024jp on 2022-09-25.
//

import Foundation

final class ReceiveCommand: NSScriptCommand {

    override func performDefaultImplementation() -> Any? {
        
        guard let message = self.directParameter as? String else { return false }
        
        AppDelegate.shared.message = message
        
        return true
    }
    
}
