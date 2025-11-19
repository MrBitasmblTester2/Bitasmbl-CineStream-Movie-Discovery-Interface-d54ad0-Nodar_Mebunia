import Foundation

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let year: String
    let posterName: String
}