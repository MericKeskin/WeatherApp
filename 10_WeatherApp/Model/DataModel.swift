/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct DataModel : Codable {
	let moonrise_ts : Int?
	let wind_cdir : String?
	let rh : Int?
	let high_temp : Double?
	let sunset_ts : Int?
	let moon_phase : Double?
	let wind_gust_spd : Double?
	let snow_depth : Int?
	let clouds : Int?
	let ts : Int?
	let sunrise_ts : Int?
	let app_min_temp : Double?
	let pop : Int?
	let wind_cdir_full : String?
	let moon_phase_lunation : Double?
	let slp : Double?
	let app_max_temp : Double?
	let valid_date : String?
	let vis : Double?
	let snow : Int?
	let dewpt : Double?
	let uv : Double?
	let weather : WeatherModel?
	let wind_dir : Int?
	let max_dhi : String?
	let clouds_hi : Int?
	let low_temp : Double?
	let max_temp : Double?
	let moonset_ts : Int?
	let datetime : String?
	let temp : Double?
	let min_temp : Double?
	let clouds_mid : Int?
	let clouds_low : Int?

	enum CodingKeys: String, CodingKey {

		case moonrise_ts = "moonrise_ts"
		case wind_cdir = "wind_cdir"
		case rh = "rh"
		case high_temp = "high_temp"
		case sunset_ts = "sunset_ts"
		case moon_phase = "moon_phase"
		case wind_gust_spd = "wind_gust_spd"
		case snow_depth = "snow_depth"
		case clouds = "clouds"
		case ts = "ts"
		case sunrise_ts = "sunrise_ts"
		case app_min_temp = "app_min_temp"
		case pop = "pop"
		case wind_cdir_full = "wind_cdir_full"
		case moon_phase_lunation = "moon_phase_lunation"
		case slp = "slp"
		case app_max_temp = "app_max_temp"
		case valid_date = "valid_date"
		case vis = "vis"
		case snow = "snow"
		case dewpt = "dewpt"
		case uv = "uv"
		case weather = "weather"
		case wind_dir = "wind_dir"
		case max_dhi = "max_dhi"
		case clouds_hi = "clouds_hi"
		case low_temp = "low_temp"
		case max_temp = "max_temp"
		case moonset_ts = "moonset_ts"
		case datetime = "datetime"
		case temp = "temp"
		case min_temp = "min_temp"
		case clouds_mid = "clouds_mid"
		case clouds_low = "clouds_low"
	}
}
