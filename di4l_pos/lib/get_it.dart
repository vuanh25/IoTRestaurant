import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:di4l_pos/get_it.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() => $initGetIt(getIt);

@module
abstract class AppModule {
  @preResolve
  Future<AppPref> get appPrefs => AppPref.instance();
}
