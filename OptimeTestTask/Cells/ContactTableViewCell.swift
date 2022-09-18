

import UIKit

class ContactTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var contactImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!

    var contact: Contact!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        contactImage.layer.cornerRadius = contactImage.bounds.height / 5
        
    }

}
