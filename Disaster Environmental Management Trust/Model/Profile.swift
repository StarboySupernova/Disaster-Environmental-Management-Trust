/*
See LICENSE folder for this sampleโs licensing information.

Abstract:
A representation of user profile data.
*/

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "Simbarashe Dombodzvuku")

    enum Season: String, CaseIterable, Identifiable {
        //case spring = "๐ท"
        case summer = "๐"
        case autumn = "๐"
        case winter = "๐ง"

        var id: String { rawValue }
    }
}
