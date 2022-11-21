//
//  NotificationService.swift
//  NotificationService
//

import UserNotifications
import CTNotificationService
import CleverTapSDK


class NotificationService: CTNotificationServiceExtension {
    
    var contentHandler: ((UNNotificationContent) -> Void)?
    var bestAttemptContent: UNMutableNotificationContent?
    
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
        CleverTap.setDebugLevel(CleverTapLogLevel.debug.rawValue)
        CleverTap.sharedInstance()?.recordEvent("NotificationServiceEventForPushImpression")
        let profile: Dictionary<String, Any> = [
                    "Identity": "rameshwargupta",
                    "Email": "rameshwargupta2208@gmail.com",]
        CleverTap.sharedInstance()?.onUserLogin(profile)
                // call to record the Notification viewed
        CleverTap.sharedInstance()?.recordNotificationViewedEvent(withData:request.content.userInfo)
        super.didReceive(request, withContentHandler: contentHandler)
    }
    
}
