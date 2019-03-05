import Muon
import Foundation

guard CommandLine.argc == 2 else {
    print("Usage: Muon-Demo [URL]")
    exit(1)
}

let myRSSFeed = try String(contentsOf: URL(string: CommandLine.arguments[1])!)
let parser = FeedParser(string: myRSSFeed)

parser.completion({ (result) in
    do {
        let feed = try result.get()
        print("Parsed:\n\(feed)")
    } catch {
        print(error)
    }
})

parser.main()
