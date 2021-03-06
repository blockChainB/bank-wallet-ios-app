import Foundation

class PinManager {
    private let pinKey = "pin_keychain_key"

    var isPinned: Bool {
        return KeychainHelper.shared.getString(pinKey) != nil
    }

    func store(pin: String?) throws {
        try KeychainHelper.shared.set(pin, key: pinKey)
    }

    func validate(pin: String) -> Bool {
        return KeychainHelper.shared.getString(pinKey) == pin
    }

}
