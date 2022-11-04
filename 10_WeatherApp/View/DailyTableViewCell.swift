//
//  DailyTableViewCell.swift
//  10_WeatherApp
//
//  Created by Meriç Keskin on 12.09.2022.
//

import UIKit

class DailyTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    var forecastData = [DataModel]()
    var allData: WeatherDataModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainCollectionView.showsHorizontalScrollIndicator = false
        
        mainCollectionView.register(UINib(nibName: "DailyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "dailyItem")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func passData(forecastData: [DataModel], allData: WeatherDataModel) {
        self.forecastData = forecastData
        self.allData = allData
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let item = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "dailyItem", for: indexPath) as? DailyCollectionViewCell {
            item.loadData(data: forecastData[indexPath.row+1], weatherData: allData ?? WeatherDataModel(data: [], city_name: "", lon: "", timezone: "", lat: "", country_code: "", state_code: ""))
            return item
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 72, height: 108)
    }
    
}
