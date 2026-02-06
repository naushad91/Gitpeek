//
//  GFFollowerItemVC.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 06/02/26.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {


    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}

