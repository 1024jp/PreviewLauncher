//
//  ViewController.swift
//  PreviewLauncher
//
//  Created by 1024jp on 2022-09-25.
//

import Cocoa

final class ViewController: NSViewController {

    @objc dynamic var string = "moof!"
    
    private let applicationPath: String = Bundle.main.path(forResource: "Satellite", ofType: "app")!
    
    
    
    
    @IBAction func launch(_ sender: Any?) {
        
        self.run(command: "activate")
    }
    
    
    @IBAction func send(_ sender: Any?) {
        
        self.commitEditing()
        self.run(command: "receive \"\(self.string)\"")
    }
    
    
    
    private func run(command: String) {
        
        Task.detached {
            let source = "tell application \"\(self.applicationPath)\" to \(command)"
            let applescript = NSAppleScript(source: source)!
            
            var error: NSDictionary?
            applescript.executeAndReturnError(&error)
            
            if let error {
                print(error)
            }
        }
    }
    
    
}

