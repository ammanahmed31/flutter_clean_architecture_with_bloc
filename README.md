# Flutter Clean Architecture with BLoC

A robust, modular, and scalable Flutter application boilerplate following Clean Architecture principles, advanced state management with BLoC, and a highly customizable theming and localization system. This project demonstrates best practices for building production-ready Flutter apps, including dependency injection, network abstraction, and feature modularization.

---

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Architecture Overview](#architecture-overview)
- [Getting Started](#getting-started)
- [Theming & Localization](#theming--localization)
- [Dependency Injection](#dependency-injection)
- [Network Layer](#network-layer)
- [Storage](#storage)
- [Contributing](#contributing)
- [License](#license)

---

## Features
- **Clean Architecture**: Strict separation of concerns for scalability and testability.
- **Feature Modularization**: Each feature is self-contained with its own data, domain, and presentation layers.
- **BLoC State Management**: Advanced state management using BLoC/Cubit for both features and shared concerns.
- **Customizable Theming**: Centralized and extensible theming system with support for custom color extensions and typography.
- **Localization**: Modular localization with support for multiple languages and easy translation management.
- **Network Abstraction**: API service layer with interceptors, error handling, and endpoint management.
- **Dependency Injection**: Centralized DI for easy testing and scalability.
- **Secure & Shared Storage**: Abstraction for secure and shared preferences storage.
- **Cross-Platform**: Ready for Android, iOS, Web, macOS, Linux, and Windows.

---

## Project Structure
```
lib/
  app.dart                # App entry point
  main.dart               # Main bootstrap
  di.dart                 # Dependency injection setup
  config/                 # App-wide config, routes, theming
  core/                   # Core utilities, network, error, storage
  features/               # Feature modules (data/domain/presentation)
  shared_features/        # Shared modules (theme, localization)
assets/
  fonts/                  # Custom fonts
  images/                 # App images
  translations/           # Localization files
```

---

## Architecture Overview
- **config/**: App-wide configuration, routing, and theming.
- **core/**: Reusable utilities, constants, error handling, network abstraction, and storage services.
- **features/**: Each feature (e.g., `example_feature`) is organized into `data`, `domain`, and `presentation` layers:
  - `data/`: Data sources, models, repositories
  - `domain/`: Entities, repositories, use cases
  - `presentation/`: BLoC/Cubit, UI pages
- **shared_features/**: Cross-cutting concerns like theming and localization, each with their own data sources, models, and BLoC/Cubit state management.

---

## Getting Started
1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd flutter_clean_architecture_with_bloc
   ```
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run the app:**
   ```bash
   flutter run
   ```

---

## Theming & Localization
- **Theming:**
  - Centralized in `lib/config/theme/` and `lib/shared_features/theme/`.
  - Easily extendable with custom color extensions and typography.
- **Localization:**
  - Managed in `lib/shared_features/localization/` and `assets/translations/`.
  - Add new languages by providing JSON files and updating the localization cubit.

---

## Dependency Injection
- All dependencies are registered in `lib/di.dart` for easy management and testing.

---

## Network Layer
- API services are abstracted in `lib/core/network/`.
- Includes interceptors for logging, authentication, and error handling.
- Endpoints are managed centrally for maintainability.

---

## Storage
- Secure storage and shared preferences are abstracted in `lib/core/utils/storage/`.
- Easily switch or extend storage mechanisms as needed.

---

## Contributing
Contributions are welcome! Please open issues and submit pull requests for improvements or new features.

---

## License
This project is licensed under the MIT License.
