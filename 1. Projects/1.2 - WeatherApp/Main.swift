import SwiftUI

struct WeatherView: View {
    @State private var temperature: String = "28°C"
    
    var body: some View {
        VStack {
            Text("Current Temperature")
                .font(.title)
            Text(temperature)
                .font(.largeTitle)
                .bold()
        }
        .padding()
    }
}
