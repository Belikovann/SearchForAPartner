//
//  Partner.swift
//  PartnerFounder
//
//  Created by Аня Беликова on 23.03.2023.
//

import Foundation

struct Partner: Codable {
    let gender: Gender
    let name: Name
    let phone: String
    let picture: Picture
}

struct Name: Codable  {
    let title: String
    let first: String
    let last: String
    
    var fullName: String {
        "\(title) \(first) \(last)"
    }
}

enum Gender: String, Codable {
    case male = "male"
    case female = "female"
}

struct Picture: Codable {
    let medium: String
}
