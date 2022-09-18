
import Foundation
import UIKit

class ContactsArr {
    
    var contacts = [[Contact]]()
    
    init(){
        setup()
    }
    
    func setup(){
        let first = Contact(name: "Kate Thompson", image: UIImage(), status: .MessageRequest)
        let second = Contact(name: "Jack Jones", image: UIImage(), status: .GroupRequest)
        let third = Contact(name: "Anna Taylor", image: UIImage(), status: .JoinedApp)
        let fourth = Contact(name: "Ted walker", image: UIImage(), status: .MessageRequest)
        let fifth = Contact(name: "Mary West", image: UIImage(), status: .MessageRequest)
        let sixth = Contact(name: "Alfa inc.", image: UIImage(), status: .InvitingYou)
        
        
        let todayArr = [first]
        let yesterdayArr = [second, third, fourth, fifth, sixth]
        
        contacts.append(todayArr)
        contacts.append(yesterdayArr)
        
    }
}
