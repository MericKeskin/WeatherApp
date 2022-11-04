//
//  SearchTableViewCell.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 12.09.2022.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var degreeLbl: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weatherLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellView.layer.masksToBounds = true
        cellView.layer.cornerRadius = 16
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(data: DataModel, weatherData: WeatherDataModel) {
        locationLbl.text = weatherData.city_name
        degreeLbl.text = String(format: "%.0f", data.min_temp ?? 0) + "°/" + String(format: "%.0f", data.max_temp ?? 0) + "°"
        weatherIcon.image = UIImage(named: data.weather?.icon ?? "Error")
        weatherLbl.text = data.weather?.description
    }
    
}
