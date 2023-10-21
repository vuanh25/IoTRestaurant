import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/common/storage/app_prefs.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/onboard/response/onboard.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/route_manager.dart';

part 'onboard_state.dart';
part 'onboard_cubit.freezed.dart';

class OnboardCubit extends Cubit<OnboardState> {
  /// MARK: - Initials;
  final _appPrefs = getIt<AppPref>();

  OnboardCubit() : super(const OnboardState.initial(data: OnboardStateData()));

  /// Get Onboards
  Future<void> getOnboards() async {
    final onboards = [
      Onboard(
          icon: GlobalImages.onboard1,
          title: 'Easy to use mobile pos',
          description:
              'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi'),
      Onboard(
          icon: GlobalImages.onboard2,
          title: 'All business solutions',
          description:
              'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi'),
      Onboard(
          icon: GlobalImages.onboard3,
          title: 'All business solutions',
          description:
              'Lorem ipsum dolor sit amet, consectetuer adipisci elit, sed diam nonummy nibh euismod tincidunt u laoreet dolore magna aliquam erat volutpat. Ut wi')
    ];
    emit(OnboardState.getOnboars(
        data: state.data?.copyWith(onboards: onboards)));
  }

  /// Change Index
  void changeIndexPageView({required int index}) {
    emit(OnboardState.changeIndex(data: state.data?.copyWith(index: index)));
  }

  /// Update Index
  void updateIndex({required int index}) {
    emit(OnboardState.updateIndex(data: state.data?.copyWith(index: index)));
  }

  /// Next Page
  void handleNextPage() {
    final currentIndex = state.data?.index ?? 0;
    final onboards = state.data?.onboards ?? [];
    if (currentIndex < onboards.length - 1) {
      changeIndexPageView(index: currentIndex + 1);
    } else {
      navigator!.pushNamedAndRemoveUntil(
          RouteGenerator.loginScreen, (route) => false);
    }
  }

  /// Skip
  void handleSkipOnBoard() async {
    await _appPrefs.saveSkipOnboard(isSkip: true);
    navigator!
        .pushNamedAndRemoveUntil(RouteGenerator.loginScreen, (route) => false);
  }
}
