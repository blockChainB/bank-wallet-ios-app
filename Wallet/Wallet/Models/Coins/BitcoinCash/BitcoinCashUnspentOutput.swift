import Foundation
import RealmSwift

class BitcoinCashUnspentOutput: Object {
    @objc dynamic var value: Int = 0
    @objc dynamic var index: Int = 0
    @objc dynamic var confirmations: Int = 0
    @objc dynamic var transactionHash: String = ""
    @objc dynamic var script: String = ""

    override class func primaryKey() -> String? {
        return "transactionHash"
    }

}
