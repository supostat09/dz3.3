//
//  contact.swift
//  lesson4.3
//
//  Created by Абдулла-Бек on 15/3/23.
//

import UIKit

class ContactViewController: UIViewController {

    
    @IBOutlet weak var ContactTableView: UITableView!
    
   private var contacts: [Contact] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My contact"
        ContactTableView.dataSource = self
        initData()
    }
   private func initData() {
        contacts = [Contact(name: "Atai", phoneNumber: "(552) 029-406", avatarImage: "icon1"),
                    Contact(name: "Meerim", phoneNumber: "(555) 029-205", avatarImage: "icon6"),
                    Contact(name: "Abdulla", phoneNumber: "(707) 028-756", avatarImage: "icon4"),
                    Contact(name: "Bektur", phoneNumber: "(702) 028-756", avatarImage: "icon9"),
                    Contact(name: "Mavluda", phoneNumber: "(552) 058-744", avatarImage: "icon7"),
                    Contact(name: "Elina", phoneNumber: "(555) 034-756", avatarImage: "icon6"),
                    Contact(name: "Alisa", phoneNumber: "(707) 068-856", avatarImage: "icon7"),
                    Contact(name: "Ayaz", phoneNumber: "(702) 026-553", avatarImage: "icon1"),
                    Contact(name: "Baiel", phoneNumber: "(702) 548-236", avatarImage: "icon9"),
        ]
    }

}

extension ContactViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(named: contacts[indexPath.row].avatarImage)
        return cell
    }
    
    
}

struct Contact {
    var name: String
    var phoneNumber: String
    var avatarImage: String
}
