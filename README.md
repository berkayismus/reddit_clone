# Reddit Clone - Flutter

This project contains a basic Reddit clone built using Flutter. The app simulates the functionality of a basic social media platform, allowing users to view, refresh, and interact with posts.

## Technologies Used

This project utilizes the following technologies:

- **Dependency Injection:** [injectable](https://pub.dev/packages/injectable) and [get_it](https://pub.dev/packages/get_it) libraries are used to facilitate dependency injection within the project.

- **HTTP Requests:** The [dio](https://pub.dev/packages/dio) library is used for making HTTP requests. It provides a powerful and efficient tool for communicating with the server.

- **State Management:** [flutter_bloc](https://pub.dev/packages/flutter_bloc) is employed for state management within the app. It allows for effective management and direction of the app's state.

- **Code Generation:** The [build_runner](https://pub.dev/packages/build_runner) is used for code generation within the project. It helps reduce repetitive and tedious code writing.

## Additional Features

The project includes the following additional features to enhance the user experience:

- **Pull to Refresh:** Users can easily refresh posts by pulling down the screen. This feature offers a quick and intuitive way to keep the content up to date.

- **Sliver Widgets:** The app utilizes sliver widgets to provide a smooth and dynamic user interface. This ensures a seamless experience during page transitions and content scrolling.

## Getting Started

To run the project in a local development environment, you can follow these steps:

1. Clone this repository to your local machine.
   ```bash
   git clone https://github.com/berkayismus/reddit_clone.git
2. Install the required dependencies by running the following command.
    ```bash
    flutter pub get
3. Launch the application using the following command.
    ```bash
    flutter run
