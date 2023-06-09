//
//  ViewController.swift
//  PartnerFounder
//
//  Created by Аня Беликова on 22.03.2023.
//

import UIKit


final class PartnerViewController: UITableViewController {

    private var partner: [Partner] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        partner.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let partnerCell = tableView.dequeueReusableCell(withIdentifier: "partnerCell", for: indexPath)
        guard let partnerCell = partnerCell as? PartnerCell else {return UITableViewCell() }
        let partner = partner[indexPath.row]
        partnerCell.configure(with: partner)

        return partnerCell
    }
    
    @IBAction func nextButtonTapped() {
        fetchPartner()
    }
}


extension PartnerViewController {
    func fetchPartner() {
        URLSession.shared.dataTask(with: Link.partnerURL.url) { [weak self] data, _, error in
            guard let data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                
                self?.partner = try decoder.decode([Partner].self, from: data)
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
