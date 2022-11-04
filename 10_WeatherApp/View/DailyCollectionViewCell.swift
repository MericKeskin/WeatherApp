//
//  DailyCollectionViewCell.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 13.09.2022.
//

import UIKit

class DailyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var weekDayLbl: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var degreeLbl: UILabel!
    @IBOutlet weak var chanceOfRainLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func loadData(data: DataModel, weatherData: WeatherDataModel) {
        weekDayLbl.text = .getFormattedDate(string: data.datetime ?? "", formatter: "EEEE")
        weatherIcon.image = UIImage(named: data.weather?.icon ?? "Error")
        degreeLbl.text = String(format: "%.0f", data.min_temp ?? 0) + "°/" + String(format: "%.0f", data.max_temp ?? 0) + "°"
        chanceOfRainLbl.text = "%\(data.pop ?? 0) rain"
    }

}
