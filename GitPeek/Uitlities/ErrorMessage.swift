//
//  ErrorMessage.swift
//  GitPeek
//
//  Created by Naushad Ali Khan on 25/01/26.
//

import Foundation

enum GFError: Error, LocalizedError{
    
    case invalidUsername
    case unableToComplete
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidUsername:
            return "This username created an invalid request. May be username doesn't exist enter proper username."
        case .unableToComplete:
            return "Unable to complete your request. Please check your internet connection."
        case .invalidResponse:
            return "Invalid response from the server. Please try again."
        case .invalidData:
            return "The data received from the server was invalid. Please try again."
        }
    }
}
