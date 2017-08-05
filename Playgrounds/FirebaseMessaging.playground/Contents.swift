//: Playground - noun: a place where people can play

import Foundation
import UIKit

var str = "Hello, playground"


//Either at startup, or at the desired point in your application flow, register your app for remote notifications. Call registerForRemoteNotifications as shown:

//if #available(iOS 10.0, *) {
//    let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
//
//
//}

let nameTextField =  UITextField()
let locationTextField = UITextField()

struct Constants {
    
    struct NotificationKeys {
        static let signedIn = "onSignInCompleted"
    }
}

class AppState: NSObject {
    
    static let sharedInstance = AppState()
    var signedIn = false
    var displayName: String?
    var location: String?
}

//func signedIn(user: FIRUser?) {}

 func viewDidLoad() {
//    if let user = FIRAuth.auth()?.currentUser {
//        self.signedIn(user)
//    }
    
}

func signedIn(user: String?) {
    
    AppState.sharedInstance.displayName = nameTextField.text ?? "Anonymous"
    AppState.sharedInstance.location = locationTextField.text ?? nil
    AppState.sharedInstance.signedIn = true
    let notificationName = Notification.Name(rawValue: Constants.NotificationKeys.signedIn)
    NotificationCenter.default.post(name: notificationName, object: nil, userInfo: nil)
    //performSegue
    
}
