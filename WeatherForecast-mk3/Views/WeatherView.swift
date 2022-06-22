import SwiftUI

struct WeatherView: View {
    var weather: ResponseBody
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text(weather.name)
                        .bold()
                        .font(.title)
                        .fontWeight(.thin)
                    
                    Text("\(Date().formatted(.dateTime.month().day()))")
                        .fontWeight(.thin)
                }
            
                VStack {
                    HStack {
                        VStack(spacing: 20) {
                            Text("\(weather.weather[0].main)")
                        }
                        
                        Text(weather.main.feelsLike.roundDoubleValue() + "°")
                            .font(.system(size: 80))
                            .fontWeight(.thin)
                            .padding()
                    }
                }
            }
            .padding(.bottom, 400)
            
            Spacer()

            VStack {
                HStack {
                    WeatherRow(name: "Min temp", value: weather.main.tempMin.roundDoubleValue() + "°")
                        .padding(.trailing, 20)
                            
                    WeatherRow(name: "Max temp", value: weather.main.tempMax.roundDoubleValue() + "°")
                        .padding(.leading, 20)
                }
                .padding(.bottom, 10)
                    
                HStack {
                    WeatherRow(name: "Wind speed", value: weather.wind.speed.roundDoubleValue() + " m/s")
                        .padding(.trailing, 20)
                            
                    WeatherRow(name: "Humidity", value: "\(weather.main.humidity.roundDoubleValue())%")
                        .padding(.leading, 20)
                }
                .padding(.bottom, 10)
                    
                HStack {
                    WeatherRow(name: "Pressure", value: weather.main.pressure.roundDoubleValue() + " m/s")
                        .padding(.trailing, 20)
                            
                    WeatherRow(name: "Wind Degree", value: "\(weather.wind.deg.roundDoubleValue())°")
                        .padding(.leading, 20)
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
