//
//  UIView+Extension.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 13.09.2022.
//

import Foundation
import UIKit
import UIGradient

extension UIView {
    func setGradient(view: UIView) {
        let gradient = GradientLayer(direction: .topToBottom, colors: [UIColor(named: "TopBackgroundColor")!, UIColor(named: "BottomBackgroundColor")!])
        view.backgroundColor = UIColor.fromGradient(gradient, frame: view.frame)
    }
}
