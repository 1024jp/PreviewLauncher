//
//  SatelliteApp.swift
//  Satellite
//
//  Created by 1024jp on 2022-09-25.
//

import SwiftUI
import AppKit

@main
struct SatelliteApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    
    init() {
        AppDelegate.shared = self.appDelegate
    }
    
    
    var body: some Scene {
        
        WindowGroup("Satellite") {
            ContentView()
        }
    }
    
}



final class AppDelegate: NSObject, NSApplicationDelegate, ObservableObject {
    
    static var shared: AppDelegate!
    
    @Published var message: String = ""
}
