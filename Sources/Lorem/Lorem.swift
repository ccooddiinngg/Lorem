// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public func lorem(numberOfWords: Int) -> String {
    let loremIpsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    let words = loremIpsum.components(separatedBy: " ")

    var generatedText = ""

    for _ in 0..<numberOfWords {
        let randomIndex = Int.random(in: 0..<words.count)
        generatedText += words[randomIndex] + " "
    }

    return generatedText.trimmingCharacters(in: .whitespacesAndNewlines)
}
