echo 'deleting old files...'
find . -maxdepth 20 -type f \( -name "*.inject.summary" -o -name "*.inject.dart" -o  -name "*.g.dart" -o  -name "*.freezed.dart" \) -delete

echo 'generating files...'
flutter packages pub run build_runner build --delete-conflicting-outputs

echo 'completed! ✅'