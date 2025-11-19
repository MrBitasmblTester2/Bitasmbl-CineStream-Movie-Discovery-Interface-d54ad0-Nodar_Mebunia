import Foundation

class FavoritesViewModel: ObservableObject {
    @Published private(set) var favorites: Set<Movie> = []
    func toggle(_ movie: Movie){ if favorites.contains(movie) { favorites.remove(movie) } else { favorites.insert(movie) } }
    func contains(_ movie: Movie) -> Bool { favorites.contains(movie) }
}