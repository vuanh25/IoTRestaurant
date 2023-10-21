// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/storage/app_prefs.dart' as _i3;
import 'get_it.dart' as _i9;
import 'repositories/data_repository.dart' as _i5;
import 'services/apple_service.dart' as _i4;
import 'services/firebase_message_services.dart' as _i6;
import 'services/google_service.dart' as _i7;
import 'services/local_notification_services.dart' as _i8;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  await gh.factoryAsync<_i3.AppPref>(
    () => appModule.appPrefs,
    preResolve: true,
  );
  gh.lazySingleton<_i4.AppleService>(() => _i4.AppleService());
  gh.lazySingleton<_i5.DataRepository>(() => _i5.DataRepository());
  gh.lazySingleton<_i6.FirebaseMessageServices>(
      () => _i6.FirebaseMessageServices());
  gh.lazySingleton<_i7.GoogleService>(() => _i7.GoogleService());
  gh.lazySingleton<_i8.LocalNotificationServices>(
      () => _i8.LocalNotificationServices());
  return getIt;
}

class _$AppModule extends _i9.AppModule {}
