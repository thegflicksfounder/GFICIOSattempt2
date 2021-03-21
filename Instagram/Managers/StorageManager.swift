//
//  StorageManager.swift
//  Instagram
//
//  Created by Afraz Siddiqui on 3/20/21.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()

    private init() {}

    private let storage = Storage.storage().reference()

    public func uploadProfilePicture(
        username: String,
        data: Data?,
        completion: @escaping (Bool) -> Void
    ) {
        guard let data = data else {
            return
        }
        storage.child("\(username)/profile_picture.png").putData(data, metadata: nil) { _, error in
            completion(error == nil)
        }
    }
}

