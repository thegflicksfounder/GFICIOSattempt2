//
//  AppDelegate.swift
//  Instagram
//
//  Created by Afraz Siddiqui on 3/20/21.
//

import Firebase
import UIKit
import Appirater

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        Appirater.appLaunched(true)
        Appirater.setAppId("3182731283")
        Appirater.setDebug(false)
        Appirater.setDaysUntilPrompt(3)

        FirebaseApp.configure()

        // Add dummy notification for current user
//        let id = NotificationsManager.newIdentifier()
//        let model = IGNotification(
//            identifer: id,
//            notificationType: 3,
//            profilePictureUrl: "https://iosacademy.io/assets/images/brand/icon.jpg",
//            username: "joebiden",
//            dateString: String.date(from: Date()) ?? "Now",
//            isFollowing: false,
//            postId: nil,
//            postUrl: nil
//        )
//        NotificationsManager.shared.create(notification: model, for: "iosacademy")

        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        Appirater.appEnteredForeground(true)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

