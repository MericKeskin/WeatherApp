//
//  Date+Extension.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 14.09.2022.
//

import Foundation

extension String {
    static func getFormattedDate(string: String , formatter: String) -> String {
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"

        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = formatter

        let date: Date? = dateFormatterGet.date(from: string)
        return dateFormatterPrint.string(from: date!);
    }
}
