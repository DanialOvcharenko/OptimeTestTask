
import Foundation
import UIKit

enum Status{
    case MessageRequest
    case GroupRequest
    case JoinedApp
    case InvitingYou
    
}

class Contact: NSObject {
    var name: String
    var image: UIImage
    var status: Status
    
    init(name:String,image:UIImage,status:Status) {
        self.name = name
        self.image = image
        self.status = status
    }
}
