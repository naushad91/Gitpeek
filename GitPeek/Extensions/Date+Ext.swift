//
//  Date+Ext.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 06/02/26.
//

import Foundation

extension Date {

    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
