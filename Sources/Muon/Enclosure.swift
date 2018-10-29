import Foundation

public struct Enclosure {
    public let url: String
    public let length: Int
    public let type: String

    public init(url: String, length: Int, type: String) {
        self.url = url
        self.length = length
        self.type = type
    }
}
