//
//  DetailTableViewCell.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 12.09.2022.
//

import UIKit
import UIGradient

protocol DetailTableViewCellDelegate: AnyObject {
    func didTapButton()
}

class DetailTableViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var weekDayLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var degreeLbl: UILabel!
    @IBOutlet weak var weatherLbl: UILabel!
    @IBOutlet weak var chanceOfRainLbl: UILabel!
    @IBOutlet weak var windLbl: UILabel!
    
    weak var delegate: DetailTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellView.layer.cornerRadius = 30
        cellView.setGradient(view: cellView)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func didTapBack(_ sender: Any) {
        delegate?.didTapButton()
    }
    
    func loadData(data: DataModel, weatherData: WeatherDataModel) {
        locationLbl.text = weatherData.city_name
        weatherIcon.image = UIImage(named: data.weather?.icon ?? "Error")
        weekDayLbl.text = .getFormattedDate(string: data.datetime ?? "", formatter: "EEEE")
        dateLbl.text = .getFormattedDate(string: data.datetime ?? "", formatter: "MMM d")
        degreeLbl.text = String(format: "%.0f", data.temp ?? 0) + "°"
        weatherLbl.text = data.weather?.description
        chanceOfRainLbl.text = "%\(data.pop ?? 0)"
        windLbl.text = "\(data.wind_gust_spd!) km/h"
    }
    
}
