//
//  ContentView.swift
//  TeslaWatchRemote WatchKit Extension
//
//  Created by Henry Paulino on 5/26/20.
//  Copyright © 2020 Henry Paulino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Float = 0.1
    
    var body: some View {
        VStack {
            HStack {
                Text("Battery")
                Text(String(format: "%.0f %%", min(self.progress, 1.0)*100.0))
            }
            Text("167 Miles")
            
            
            ProgressBar(progress: self.$progress)
                .frame(width: 130, height: 130)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
