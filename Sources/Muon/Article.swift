import Foundation

public struct Article: CustomStringConvertible {
    
    public let title: String
    public let link: String?
    public let guid: String?
    public let articleDescription: String
    public let published: Date
    public let updated: Date?
    public let content: String

    public private(set) var authors: [Author]

    public private(set) var enclosures: [Enclosure]

    public init(title: String? = nil, link: String? = nil, description: String? = nil, content: String? = nil, guid: String? = nil,
                published: Date? = nil, updated: Date? = nil, authors: [Author] = [], enclosures: [Enclosure] = []) {
        self.title = title ?? ""
        self.link = link
        self.articleDescription = description ?? ""
        self.guid = guid ?? ""
        self.published = published ?? Date()
        self.updated = updated
        self.content = content ?? ""

        self.authors = authors
        self.enclosures = enclosures
    }

    mutating func addAuthor(_ author: Author) {
        authors.append(author)
    }

    mutating func addEnclosure(_ enclosure: Enclosure) {
        enclosures.append(enclosure)
    }
    
    public var description: String {
        return """
        title: \(title)
        link: \(link ?? "No link")
        published: \(published)
        enclosures: \(enclosures)
        description: \(articleDescription)
        """
    }
}
