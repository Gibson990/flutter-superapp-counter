# Flutter Counter App with Persistent Counter Value

This is a simple Flutter app that demonstrates how to create a counter application, and it also includes the functionality to persist the counter value even when the app is restarted.

## Features
- **Counter Increment**: You can increment the counter by pressing the "Save" button.
- **Persistent Storage**: The counter value is stored in a local file on the device, allowing it to persist even after the app is closed or restarted.

## Usage
1. Clone or download this repository to your local machine.
2. Open the project in your preferred Flutter development environment.
3. Make sure you have the necessary dependencies installed using `flutter pub get`.
4. Run the app on an emulator or a physical device using `flutter run`.
5. The app will open, displaying the current counter value.
6. Press the "Save" button to increment the counter.
7. Close and reopen the app, and you will notice that the counter value remains persistent.

## How It Works
The persistent counter functionality is achieved by storing the counter value in a local file using the `path_provider` package. Here's a brief overview of how it works:
- The `CounterStorage` class is responsible for reading and writing the counter value to a text file on the device.
- The `FlutterDemo` widget initializes the counter value when the app is launched by reading it from the file. It also updates and saves the counter value when the "Save" button is pressed.
- The counter value persists even if you close the app because it is loaded from the local storage when the app is restarted.

## File Structure
- `main.dart`: This is the main entry point of the app, where the `MyApp` widget is defined, and the `FlutterDemo` widget is launched with the `CounterStorage` instance.
- `counter_storage.dart`: This file contains the `CounterStorage` class, which handles reading and writing the counter value to a local file.
- `flutter_demo.dart`: This file contains the `FlutterDemo` widget that displays the counter and handles user interactions.
