import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/config/theme/app_theme.dart';

final colorListProvider = Provider((ref) => colorList);
final isDarkModeProvider = StateProvider((ref) => false);
final selectedcolorProvider = StateProvider((ref) => 0);
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Provides the theme and color to the app
class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(
      isDarkMode: !state.isDarkMode,
    ); // Change the value of isDarkMode
  }

  void changeColor(int colorIndex) {
    state = state.copyWith(
      selectedColor: colorIndex,
    ); // Change the value of selectedColor
  }

  void changeColorIndex(int index) {}
}
