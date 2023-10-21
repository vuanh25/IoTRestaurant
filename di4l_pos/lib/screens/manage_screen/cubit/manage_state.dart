part of 'manage_cubit.dart';

@freezed
class ManageStateData with _$ManageStateData{
  const factory ManageStateData([
    @Default([]) List<ManageMenu> listInfoToday,
    @Default([]) List<ManageMenu> listAquaitenbutton,
    @Default([]) List<ManageMenu> listHelpnotebutton,
    @Default([]) List<ManageMenu> listNewUpdate,
    @Default([]) List<ManageMenu> listQuickMenu1,
    @Default([]) List<ManageMenu> listQuickMenu2,
    @Default([]) List<ManageMenu> listSliceshow,
    @Default([]) List<ManageMenu> listOrderStatus,
    @Default([]) List<ManageMenu> listInfoTodayOriginal,
    @Default([]) List<ManageMenu> listAquaitenbuttonOriginal,
    @Default([]) List<ManageMenu> listHelpnotebuttonOriginal,
    @Default([]) List<ManageMenu> listNewUpdateOriginal,
    @Default([]) List<ManageMenu> listQuickMenu1Original,
    @Default([]) List<ManageMenu> listQuickMenu2Original,
    @Default([]) List<ManageMenu> listSliceshowOriginal,
    @Default([]) List<ManageMenu> listOrderStatusOriginal,
    ManageMenu? manageMenuSelected,
  ]) = _ManageStateData;
}

@freezed
class ManageState with _$ManageState {
  const factory ManageState.initial(ManageStateData? data) = Initial;
  const factory ManageState.getAquitanbutton(ManageStateData? data) = GetAquitanbutton;
  const factory ManageState.getHelpnoteButton(ManageStateData? data) = GetHelpnoteButton;
  const factory ManageState.getListinfoToday(ManageStateData? data) = GetListinfoToday;
  const factory ManageState.getNewupdate(ManageStateData? data) = GetNewupdate;
  const factory ManageState.getlistQuickMenu1(ManageStateData? data) = GetlistQuickMenu1;
  const factory ManageState.getlistQuickMenu2(ManageStateData? data) = GetlistQuickMenu2;
  const factory ManageState.getlistSliceshow(ManageStateData? data) = GetlistSliceshow;
  const factory ManageState.getlistOrderStatus(ManageStateData? data) = GetlistOrderStatus;
  // const factory ManageState.status() = Status;
}
