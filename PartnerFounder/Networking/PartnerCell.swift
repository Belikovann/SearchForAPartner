//
//  PartnerCell.swift
//  PartnerFounder
//
//  Created by Аня Беликова on 25.03.2023.
//

import UIKit

final class PartnerCell: UITableViewCell {
    
    @IBOutlet var partnerNameLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var pictureLabel: UIImageView!
    
    func configure(with partner: Partner) {
        partnerNameLabel.text = partner.name.fullName
        genderLabel.text = partner.gender.rawValue
        phoneLabel.text = partner.phone
    }
    
}
