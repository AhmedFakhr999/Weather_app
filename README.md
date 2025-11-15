🌤️ Weather App
A modern, cross-platform weather application built with Flutter that provides real-time weather information with a beautiful, intuitive interface.

📖 Project Overview
Weather App is a Flutter-based mobile application that delivers accurate weather forecasts and current conditions. Built with modern development practices and state management, it offers a seamless user experience for checking weather information on the go.

🛠️ Tech Stack
Core Framework
Flutter 3.32.0 - Cross-platform UI toolkit

Dart 3.5 - Programming language

State Management & Architecture
Flutter Bloc 8.1.6 - Predictable state management

BLoC 8.1.4 - Business Logic Component pattern

Provider 6.1.2 - Dependency injection

Networking & APIs
Dio 5.7.0 - Powerful HTTP client

Dio Web Adapter 2.0.0 - Web compatibility

HTTP Parser 4.0.2 - HTTP message handling

Development & Quality
Flutter Lints 4.0.0 - Code quality analysis

Flutter Test - Testing framework

Leak Tracker - Memory leak detection

🏗️ Architecture
The application follows a clean architecture pattern with clear separation of concerns:

text
Presentation Layer (UI) → Business Logic (BLoC) → Data Layer (Repositories) → External Sources
Key Architectural Patterns:
BLoC Pattern for state management

Repository Pattern for data abstraction

Dependency Injection with Provider

Event-Driven Architecture

✨ Features
Core Features
✅ Real-time weather data

✅ Location-based weather information

✅ Beautiful, responsive UI design

✅ Cross-platform compatibility (Android, iOS, Web)

✅ Offline capability support

UI/UX Features
✅ Material Design components

✅ Cupertino (iOS-style) icons

✅ Adaptive theming

✅ Smooth animations and transitions

🧪 Testing
The project includes comprehensive testing setup:

Testing Framework
Unit Testing with Flutter Test

Widget Testing for UI components

Integration Testing for end-to-end flows

Memory Leak Detection with Leak Tracker

Test Packages
flutter_test - Core testing utilities

leak_tracker_flutter_testing - Memory testing

mockito-compatible setup

📁 Folder Structure
text
weather/
├── android/                 # Android-specific files
├── build/                  # Build outputs
├── lib/                    # Main application code
│   ├── main.dart           # Application entry point
│   ├── src/
│   │   ├── blocs/          # Business logic components
│   │   ├── models/         # Data models
│   │   ├── repositories/   # Data layer
│   │   ├── services/       # External services
│   │   ├── pages/          # Screen widgets
│   │   ├── widgets/        # Reusable components
│   │   └── utils/          # Utilities & helpers
├── ios/                    # iOS-specific files
├── test/                   # Test files
└── web/                    # Web-specific files
🚀 How to Run the Project
Prerequisites
Flutter SDK 3.32.0 or later

Dart 3.5 or later

Android Studio/VSCode with Flutter extension

Android SDK or iOS simulator

Installation Steps
Clone the repository

bash
git clone <repository-url>
cd weather
Get dependencies

bash
flutter pub get
Run the application

bash
flutter run
Build for Production
Android APK:

bash
flutter build apk --release
Android App Bundle:

bash
flutter build appbundle --release
iOS:

bash
flutter build ios --release
Web:

bash
flutter build web --release
🔮 Future Improvements
Planned Enhancements
Weather maps integration

Severe weather alerts

Historical weather data

Multiple location support

Weather widgets for home screen

Dark/light theme toggle

Weather data caching

Push notifications for weather updates

Technical Improvements
Additional unit test coverage

Performance optimization

Enhanced error handling

Internationalization (i18n)

Accessibility improvements



Main Screen	Location Search	Detailed Forecast
https://screenshots/main.png	https://screenshots/search.png	https://screenshots/details.png
👥 Social Links
Developer: Ahmed Fakhr El-Din Abdallah
Email: ahmed.fakhr.elldin@gmail.com
GitHub: https://github.com/AhmedFakhr999
LinkedIn: [https://linkedin.com/in/Ahmed](https://www.linkedin.com/in/ahmed-fakhr-el-din-abdallah-769156233/)


<div align="center">
Built with ❤️ using Flutter

https://img.shields.io/badge/Flutter-3.32.0-blue?style=for-the-badge&logo=flutter
https://img.shields.io/badge/Dart-3.5-blue?style=for-the-badge&logo=dart

</div>
