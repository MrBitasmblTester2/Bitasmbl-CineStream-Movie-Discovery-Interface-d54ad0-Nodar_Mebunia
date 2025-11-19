# Bitasmbl-CineStream-Movie-Discovery-Interface-d54ad0-Nodar_Mebunia

## Description
A visually engaging, fully responsive movie discovery interface where users can browse, filter, and favorite movies. The project focuses on building an interactive UI with smooth animations, reusable components, and responsive layouts using only front-end technologies.

## Tech Stack
- Swift

## Requirements
- Ensure responsive design and grid layout
- Implement at least one animation or transition using CSS or Framer Motion
- Use a front-end framework (React, Vue, Svelte, etc.)

## Installation
Step-by-step setup guide for the Swift-based project:

1. Clone the repository:
   git clone https://github.com/MrBitasmblTester2/Bitasmbl-CineStream-Movie-Discovery-Interface-d54ad0-Nodar_Mebunia.git

2. Change into the project directory:
   cd Bitasmbl-CineStream-Movie-Discovery-Interface-d54ad0-Nodar_Mebunia

3. Open the Xcode project or workspace:
   - If the repo contains an Xcode project file:
     open CineStream.xcodeproj
   - If the repo uses a workspace (CocoaPods, SPM workspace, etc.):
     open CineStream.xcworkspace

4. (Optional) If the project uses Swift Package Manager for dependencies:
   swift build

5. Build and run in Xcode by selecting a simulator or a connected device and pressing the Run button (⌘R).

Note: No environment variables are required for a pure front-end Swift UI project unless explicitly added in the repository.

## Usage
- Open the project in Xcode as described in Installation.
- Select a simulator or a connected device as the run target.
- Build and run the app (⌘R).
- In the running app you will be able to:
  - Browse movies presented in a responsive grid layout.
  - Use provided UI controls to filter movies.
  - Favorite/unfavorite movies; favorites are persisted locally.
- If the project is configured as a command-line Swift app (rare for UI-focused work), you can run:
  swift run

## Implementation Steps
1. Create a new Swift UI application target in Xcode (App template) named CineStream.
2. Define a Movie model struct (id, title, posterURL, genres, isFavorite) conforming to Identifiable and Codable.
3. Add local sample data (movies.json) in the app bundle for development and preview purposes. Implement a simple JSON loader to populate an in-memory movie list.
4. Choose a front-end UI approach in Swift (SwiftUI views) and organize the project into reusable components: MovieCardView, MovieGridView, FilterBar, and FavoritesManager.
5. Implement a responsive grid using SwiftUI’s LazyVGrid with dynamic column counts. Use GeometryReader or adaptive GridItem to adjust the number of columns based on available width to ensure responsiveness on multiple device sizes.
6. Build filtering UI (FilterBar) that updates the displayed movie list by genre, search text, or other criteria. Use @State and @Published to drive the UI updates.
7. Implement favoriting functionality: toggle a movie's isFavorite state from MovieCardView and persist favorites locally using UserDefaults or a simple local persistence mechanism.
8. Add at least one animation or transition using SwiftUI animation APIs (e.g., .animation(), .transition(), matchedGeometryEffect) for interactions such as: tapping to favorite, presenting a detail view, or card hover/selection effects. Ensure animations are smooth and consistent.
9. Create reusable components and style them consistently: image loading for posters, title overlays, metadata badges, and action buttons.
10. Ensure accessibility and layout adaptability: use scalable fonts, Dynamic Type support, and test in different simulator sizes and orientations to verify the responsive grid behavior.
11. Add previews for SwiftUI views to iterate on components quickly in Xcode Previews.
12. Test the UI flows manually in Simulator: browsing, filtering, favoriting, and rotating/resizing to validate responsive design and animations.

## API Endpoints (Optional)
No backend API endpoints are implied by the selected tech stack (Swift) and the provided requirements. This project is focused on a front-end Swift UI implementation.