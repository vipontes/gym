#!/bin/sh
rm lib/database/*.g.dart
flutter pub get
flutter packages pub run build_runner clean
flutter packages pub run build_runner build --delete-conflicting-outputs