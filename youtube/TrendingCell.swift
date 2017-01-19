//
//  TrendingCell.swift
//  youtube
//
//  Created by Christian Fernandes.
//  Copyright © 2017 Christian Fernandes.. All rights reserved.
//

import UIKit

class TrendingCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchTrendingFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }

}
