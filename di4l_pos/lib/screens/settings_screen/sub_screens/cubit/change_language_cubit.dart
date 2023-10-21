import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/settings/response/country_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as getX;

part 'change_language_cubit.freezed.dart';
part 'change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  /// MARK: - Initials;
  final _appPrefs = getIt<AppPref>();

  ChangeLanguageCubit()
      : super(const ChangeLanguageState.initial(data: ChangeLanguageStateData()));

  final List<CountryModel> _countries = [
    CountryModel(
      countryCode: 'vi',
      flagUrl: GlobalImages.vietnamFlag,
      countryName: 'vietnam',
      isSelected: false,
    ),
    CountryModel(
      countryCode: 'en',
      flagUrl: GlobalImages.usaFlag,
      countryName: 'english',
      isSelected: false,
    )
  ];

  /// Get Language Supports
  Future<void> getLanguagesSupport() async {
    try {
      final currentLocale = await Helpers.getCurentLocale();
      final countriesState = (state.data?.countries ?? []).isNotEmpty
          ? (state.data?.countries ?? [])
          : _countries;
      List<CountryModel> countriesCopy = [...countriesState];
      countriesCopy.forEach((element) {
        if (element.countryCode?.toLowerCase() ==
            currentLocale.languageCode.toLowerCase()) {
          element.isSelected = true;
        } else {
          element.isSelected = false;
        }
      });
      emit(ChangeLanguageState.getLanguages(
          data: state.data?.copyWith(countries: _countries)));
    } catch (error) {
      debugPrint('Get Language Support Error: $error');
    }
  }

  /// Change Language
  Future<void> changeLanguage({required CountryModel countryModel}) async {
    try {
      await _appPrefs.savelanguage(languageCode: countryModel.countryCode!);
      await getLanguagesSupport();
      getX.Get.updateLocale(Locale(countryModel.countryCode!));
    } catch (error) {
      debugPrint('Change langue erorr: $error');
    }
  }
}
