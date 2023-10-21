// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/table/response/table_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_order_state.dart';
part 'table_order_cubit.freezed.dart';

class TableCubit extends Cubit<TableState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  TableCubit() : super(const TableState.initial(data: TableStateData()));

  /// Get Tables
  Future<void> getTables() async {
    try {
      emit(TableState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final tableResponse = await _dataRepository.getTables();
      emit(TableState.getTable(
          data: state.data?.copyWith(
              status: StatusType.loaded, tables: tableResponse.data ?? [])));
    } catch (error) {
      emit(
        TableState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Get Tables
  Future getTableWithId({required int id}) async {
    try {
      emit(TableState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final tableData = await _dataRepository.getTableWithId(id: id);
      emit(TableState.getTable(
          data: state.data
              ?.copyWith(status: StatusType.loaded, table: tableData)));
    } catch (error) {
      emit(TableState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  /// Get tables by location
  Future getTablesByLocation({required int locationId}) async {
    try {
      emit(TableState.status(
          data: state.data?.copyWith(status: StatusType.loading)));
      final tableResponse = await _dataRepository.getTables();
      List<TableModel> tablesList = tableResponse.data != null
          ? tableResponse.data!.where((element) {
              return element.locationId == locationId;
            }).toList()
          : [];
      emit(TableState.getTable(
          data: state.data
              ?.copyWith(status: StatusType.loaded, tables: tablesList)));
    } catch (error) {
      emit(
        TableState.status(
          data: state.data?.copyWith(status: StatusType.error),
        ),
      );
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
