import Foundation

public struct Enclosure: CustomStringConvertible {
    public let url: String
    public let length: Int
    public let type: String

    public init(url: String, length: Int, type: String) {
        self.url = url
        self.length = length
        self.type = type
        
    }
    
    public var description: String {
        return """
        url: \(url)
        length: \(ByteCountFormatter.string(fromByteCount: Int64(length), countStyle: .file))
        type: \(type)
        """
    }
}
