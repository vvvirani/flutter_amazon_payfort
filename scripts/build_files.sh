echo 'Deleting old Files...'
find . -maxdepth 20 -type f \( -name "*.inject.summary" -o -name "*.inject.dart" -o  -name "*.g.dart" -o  -name "*.freezed.dart" \) -delete

echo 'Generating Files...'
flutter packages pub run build_runner build --delete-conflicting-outputs

echo 'Completed! ✅'