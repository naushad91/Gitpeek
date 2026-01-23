//
//  GFButton.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 22/01/26.
//

import UIKit

class GFButton: UIButton {


        override init(frame: CGRect) {
            super.init(frame: frame)
            // custom code
            configure()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
      
        init(backgroundColor: UIColor, title: String) {
            super.init(frame: .zero)
            self.backgroundColor = backgroundColor
            self.setTitle(title, for: .normal)
            configure()
        }

        private func configure() {
            layer.cornerRadius = 10
            titleLabel?.textColor = .white
            titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)// Dynamic font
            translatesAutoresizingMaskIntoConstraints = false // Enable AutoLayout
        }
    

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
     This is a custom UIButton subclass. We override init(frame:) and call super.init to initialize the base class. We implement required init?(coder:) to prevent storyboard usage. titleLabel is optional so we use optional chaining. translatesAutoresizingMaskIntoConstraints = false enables Auto Layout, and all UI styling is centralized inside a private configure() method.”
    */

}
