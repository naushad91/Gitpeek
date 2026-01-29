//
//  UserInfoVC.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 29/01/26.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavigationBar()
        getUserInfo()
    }

    private func configureNavigationBar() {
        let doneButton = UIBarButtonItem(
            title: "Done",
            style: .prominent,
            target: self,
            action: #selector(dismissVC)
        )
        navigationItem.rightBarButtonItem = doneButton
    }

    private func getUserInfo() {
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }

            switch result {
            case .success(let user):
                // For now just print, later you’ll update UI
                print(user)

            case .failure(let error):
                self.presentGFAlertOnMainThread(
                    title: "Something went wrong",
                    message: error.localizedDescription,
                    buttonTitle: "OK"
                )
            }
        }
    }

    @objc private func dismissVC() {
        dismiss(animated: true)
    }
}

