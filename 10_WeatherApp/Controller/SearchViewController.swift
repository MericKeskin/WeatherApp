//
//  SearchViewController.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 12.09.2022.
//

import UIKit
import UIGradient

class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var forecastData = [DataModel]()
    var allData: WeatherDataModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.layer.cornerRadius = 30
        mainView.setGradient(view: mainView)
        
        searchBar.searchTextField.backgroundColor = .white
        
        mainTableView.register(UINib(nibName: "SearchTableViewCell", bundle: nil), forCellReuseIdentifier: "searchCell")
    }
    
    func getData(query: String) {
        Service.getForecastData(query: query) { resultForecast, resultAll in
            switch resultForecast {
            case .success(let forecastContent):
                self.forecastData = forecastContent
            case .failure(let error):
                print(error)
            }
            switch resultAll {
            case .success(let allContent):
                self.allData = allContent
            case .failure(let error):
                print(error)
            }
            DispatchQueue.main.async {
                self.mainTableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if forecastData.isEmpty {
            return 0
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath) as! SearchTableViewCell
        cell.loadData(data: forecastData[0], weatherData: allData ?? WeatherDataModel(data: [], city_name: "", lon: "", timezone: "", lat: "", country_code: "", state_code: ""))
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        mainTableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController {
            destination.passData(forecastData: forecastData, allData: allData ?? WeatherDataModel(data: [], city_name: "", lon: "", timezone: "", lat: "", country_code: "", state_code: ""))
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        getData(query: searchText)
    }
}
