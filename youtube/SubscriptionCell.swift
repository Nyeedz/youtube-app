//
//  SubscriptionCell.swift
//  youtube
//
//  Created by Christian Fernandes.
//  Copyright © 2017 Christian Fernandes.. All rights reserved.
//

import UIKit

class SubscriptionCell: FeedCell {

    override func fetchVideos() {
        ApiService.sharedInstance.fetchSubscriptionFeed { (videos) in
            self.videos = videos
            self.collectionView.reloadData()
        }
    }
}
