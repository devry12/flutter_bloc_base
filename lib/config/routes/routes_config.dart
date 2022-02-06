part of 'routes_handler.dart';

abstract class Routes {
  static const HOME = _Paths.HOME;
  static const ANOTHERPAGE = _Paths.ANOTHERPAGE;
}

abstract class _Paths {
  static const HOME = '/home';
  static const ANOTHERPAGE = '/another-page';
}

abstract class RoutesName {
  static const HOME = 'homeRoutes';
  static const ANOTHERPAGE = 'anotherPageRoutes';
}
