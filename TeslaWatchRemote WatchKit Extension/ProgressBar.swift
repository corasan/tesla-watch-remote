//
//  ProgressBar.swift
//  TeslaWatchRemote WatchKit Extension
//
//  Created by Henry Paulino on 5/26/20.
//  Copyright © 2020 Henry Paulino. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: Float

    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 10.0)
                .foregroundColor(.white)
                .opacity(0.2)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(style: StrokeStyle(lineWidth: 10.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(.green)
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var progress: Float = 0.2

    static var previews: some View {
        ProgressBar(progress: $progress)
    }
}
