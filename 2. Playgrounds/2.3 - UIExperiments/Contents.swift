// UI Experiments Playground
// This playground contains SwiftUI experiments.

import SwiftUI
import PlaygroundSupport

struct SampleView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .padding()
            Button("Tap Me") {
                print("Button tapped!")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

// Live Preview
PlaygroundPage.current.setLiveView(SampleView())
