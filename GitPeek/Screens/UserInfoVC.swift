//
//  UserInfoVC.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 29/01/26.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    let headerView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureNavigationBar()
        getUserInfo()
        layoutUI()
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
    
    func layoutUI() {
        view.addSubview(headerView)
        
        headerView.backgroundColor = .systemPink
        headerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            headerView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }

    @objc private func dismissVC() {
        dismiss(animated: true)
    }
}

