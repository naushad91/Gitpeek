//
//  GFRepoItemVC.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 06/02/26.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
    
    override init(user: User) {
        super.init(user: user)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }

    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
