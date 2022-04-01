//
//  UITableView+Extensions.swift
//  SwiftExtensions
//
//  Created by Ömer Saitoğlu on 1.04.2020.
//  Copyright © 2020 Ömer Saitoğlu. All rights reserved.

import UIKit

extension UITableView {
    // MARK: Empty Table View Message
    func setEmptyView(icon: String, message: String) {
        let emptyView = UIView(frame: CGRect(x: self.center.x, y: self.center.y, width: self.bounds.size.width, height: self.bounds.size.height))
        let iconImage = UIImageView()
        let messageLabel = UILabel()
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.textColor = UIColor.lightGray
        messageLabel.font = UIFont(name: "HelveticaNeue-Regular", size: 14)
        emptyView.addSubview(iconImage)
        emptyView.addSubview(messageLabel)
        iconImage.centerYAnchor.constraint(equalTo: emptyView.centerYAnchor,constant: -50).isActive = true
        iconImage.centerXAnchor.constraint(equalTo: emptyView.centerXAnchor).isActive = true
        messageLabel.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 12).isActive = true
        messageLabel.leftAnchor.constraint(equalTo: emptyView.leftAnchor, constant: 20).isActive = true
        messageLabel.rightAnchor.constraint(equalTo: emptyView.rightAnchor, constant: -20).isActive = true
        iconImage.image = UIImage(named: icon)
        messageLabel.text = message
        messageLabel.numberOfLines = 0
        messageLabel.textAlignment = .center
        // The only tricky part is here:
        self.backgroundView = emptyView
        self.separatorStyle = .none
        }
        func restore() {
        self.backgroundView = nil
    }
}
