//
//  ContentView.swift
//  Satellite
//
//  Created by 1024jp on 2022-09-25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var appDelegate: AppDelegate
    
    
    var body: some View {
        
        HStack(alignment: .firstTextBaseline) {
            Text("Message:")
                .fixedSize()
            Text(self.appDelegate.message)
                .frame(minWidth: 200)
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ContentView()
    }
}
