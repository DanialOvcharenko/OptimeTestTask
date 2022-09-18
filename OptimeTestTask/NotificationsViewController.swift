//
//  NotificationsViewController.swift
//  OptimeTestTask
//
//  Created by Mac on 17.09.2022.
//

import UIKit

class NotificationsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellID = "ContactTableViewCell"
    let modelContact = ContactsArr()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


// MARK: - Extensions

extension NotificationsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = modelContact.contacts[section]
        return section.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return modelContact.contacts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "today"
        } else {
            return "yesterday"
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as! ContactTableViewCell
        let section = modelContact.contacts[indexPath.section]
        let contact = section[indexPath.row]

        cell.contactImage.image = contact.image
        cell.nameLabel.text = contact.name
        switch contact.status {
        case .MessageRequest:
            cell.statusLabel.text = "Message request"
        case .GroupRequest:
            cell.statusLabel.text = "Group Request"
        case .JoinedApp:
            cell.statusLabel.text = "Joined 'app'"
        case .InvitingYou:
            cell.statusLabel.text = "Inviting you to Transfer profille"
        }
        cell.selectionStyle = .none
        
        return cell
    }
    
    
}

