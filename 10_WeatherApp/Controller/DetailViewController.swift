//
//  DetailViewController.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 12.09.2022.
//

import UIKit
import UIGradient

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, DetailTableViewCellDelegate {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    var forecastData = [DataModel]()
    var allData: WeatherDataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.register(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: "detailCell")
        mainTableView.register(UINib(nibName: "DailyTableViewCell", bundle: nil), forCellReuseIdentifier: "dailyCell")
    }
    
    func didTapButton() {
        dismiss(animated: true)
    }
    
    func passData(forecastData: [DataModel], allData: WeatherDataModel) {
        self.forecastData = forecastData
        self.allData = allData
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if let cell = mainTableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath) as? DetailTableViewCell {
                cell.loadData(data: forecastData[0], weatherData: allData ?? WeatherDataModel(data: [], city_name: "", lon: "", timezone: "", lat: "", country_code: "", state_code: ""))
                cell.delegate = self
                return cell
            
            }
        case 1:
            if let cell = mainTableView.dequeueReusableCell(withIdentifier: "dailyCell", for: indexPath) as? DailyTableViewCell {
                cell.passData(forecastData: forecastData, allData: allData ?? WeatherDataModel(data: [], city_name: "", lon: "", timezone: "", lat: "", country_code: "", state_code: ""))
                return cell
            }
        default:
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
