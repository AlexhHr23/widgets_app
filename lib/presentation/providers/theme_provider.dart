import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

//Un simple boolean
final isDarkProvider = StateProvider((ref) => false);

//Un simple entero
final selectedColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), 
  );

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  //STATE = estado = new AppTheme();
  ThemeNotifier(): super( AppTheme());

  void toggleDarkMode() {

    state = state.copyWhith( isDarkMode: !state.isDarkMode );

  }


}