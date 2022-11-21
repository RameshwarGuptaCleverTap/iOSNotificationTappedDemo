//
//  NotificationService.swift
//  NotificationServiceDemo
//
//  Created by Rameshwar Gupta on 09/11/22.
//

import UserNotifications
import CTNotificationService

class NotificationService: CTNotificationServiceExtension {
    
    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?
    
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        super.didReceive(request, withContentHandler: contentHandler)
    }
    
}
