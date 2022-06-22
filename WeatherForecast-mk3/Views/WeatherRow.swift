import SwiftUI

struct WeatherRow: View {
    var name: String
    var value: String

    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .leading, spacing: 8) {
                Text(name)
                    .font(.footnote)

                Text(value)
                    .fontWeight(.thin)
            }
        }
    }

    struct WeatherRow_Previews: PreviewProvider {
        static var previews: some View {
            WeatherRow(name: "Feels like", value: "18°")
        }
    }
}
