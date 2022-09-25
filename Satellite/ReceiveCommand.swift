//
//  ReceiveCommand.swift
//  Satellite
//
//  Created by 1024jp on 2022-09-25.
//

import AppKit

final class ReceiveCommand: NSScriptCommand {

    override func performDefaultImplementation() -> Any? {
        
        guard let message = self.directParameter as? String else { return false }
        
        let viewController = NSApp.windows.first?.contentViewController as? ViewController
        viewController?.string = message
        
        return true
    }
}
