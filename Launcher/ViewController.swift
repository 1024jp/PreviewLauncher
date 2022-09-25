//
//  ViewController.swift
//  PreviewLauncher
//
//  Created by 1024jp on 2022-09-25.
//

import Cocoa

final class ViewController: NSViewController {

    @IBAction func launch(_ sender: Any?) {
        
        Task.detached {
            let source = "tell application \"/System/Applications/Preview.app\" to activate"
            let applescript = NSAppleScript(source: source)!
            
            var error: NSDictionary?
            applescript.executeAndReturnError(&error)
            
            if let error {
                print(error)
            }
        }
    }
    
}

