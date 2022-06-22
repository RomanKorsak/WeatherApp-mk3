import Foundation
import CoreLocation

var lon: CLLocationDegrees = 0
var lat: CLLocationDegrees = 0

let apiKey  = "f5b163312a57771cfc7180e7d1b2b560"

var urlWithWeatherByCoordinates = "https://api.openweathermap.org/data/2.5/weather?lat=\(lat)&lon=\(lon)&appid=\(apiKey)&units=metric"

