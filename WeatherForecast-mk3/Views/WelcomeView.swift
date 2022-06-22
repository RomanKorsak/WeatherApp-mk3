import CoreLocationUI
import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("WeatherForecast App")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.thin)

                Image("weatherForStartScreen")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)

                Text("Please share your location")
                    .foregroundColor(Color.blue)
                    .fontWeight(.thin)
            }
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(10)
            .foregroundColor(.white)
            .tint(.orange)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
