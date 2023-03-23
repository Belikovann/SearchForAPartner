//
//  Partner.swift
//  PartnerFounder
//
//  Created by Аня Беликова on 23.03.2023.
//

import Foundation

struct Partner {
    let gender: Gender
    let name: [Name]
    let country: String
    let phone: String
}

struct Name {
    let title: String
    let first: String
    let last: String
}

struct Login {
    let uuid: String
    let username: String
    let password: String
}

enum Gender: String {
    case male = "male"
    case female = "female"
}
