import 'package:meta/meta.dart';

@immutable
abstract class AppState {}

class Empty extends AppState {}

class Loading extends AppState {}

class Loaded extends AppState {}

class ThemeLoaded extends AppState {}

class ThemeChanged extends AppState {}

class LanguageLoaded extends AppState {}

class ChangeLanguage extends AppState {}

class PageViewHeightChanged extends AppState {}

class LinesChanged extends AppState {}

class CurrentTabIndexChanged extends AppState {}