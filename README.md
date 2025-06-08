# Crayon Analytics

A modern, responsive Flutter-based analytics dashboard application that provides a clean and intuitive user interface for data visualization and analysis.

## Features

- 📱 Responsive Design: Adapts seamlessly between desktop and mobile views
- 🎨 Modern UI: Clean and professional interface with customizable themes
- 📊 Dashboard Layout: Organized data presentation with flexible widget arrangement
- 🧭 Navigation: Intuitive left-side menu for easy navigation
- 🔄 State Management: Efficient state handling using Provider pattern

## Technical Stack

- **Framework**: Flutter
- **State Management**: Provider
- **Architecture**: Clean architecture with separation of concerns
- **Responsive Design**: Custom responsive utilities for adaptive layouts

## Project Structure

```
lib/
├── controllers/     # Application state controllers
├── mywidgets/       # Custom UI components
├── utils/          # Utility functions and helpers
└── main.dart       # Application entry point
```

## Getting Started

1. Ensure you have Flutter installed on your machine
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the application

## Development

The application uses a responsive design approach, with different layouts for desktop and mobile views. The main components include:

- `MainScreen`: The root widget that handles the responsive layout
- `LeftSideMenu`: Navigation menu component
- `DashboardScreen`: Main content area for analytics display

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
