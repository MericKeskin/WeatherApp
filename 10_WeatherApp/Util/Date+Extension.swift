//
//  Date+Extension.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 14.09.2022.
//

import Foundation

extension Date {
    func get( components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get( component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}
