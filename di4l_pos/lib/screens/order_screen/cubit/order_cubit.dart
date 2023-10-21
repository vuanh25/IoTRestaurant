import 'package:bloc/bloc.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/products/response/product_response.dart';
import 'package:di4l_pos/models/sell/request/add_sell_request.dart';
import 'package:di4l_pos/models/sell/request/get_sell_request.dart';
import 'package:di4l_pos/models/sell/response/sell_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tiengviet/tiengviet.dart';

import '../../../models/kitchen/kitchen_detail_response.dart';
import '../../../models/products/request/get_products_request.dart';
import '../../../models/variants/response/variants_response.dart';
// import '../../../models/products/response/product_response.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

class SalesOrderCubit extends Cubit<SalesOrderState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  SalesOrderCubit()
      : super(const SalesOrderState.initial(data: SalesOrderStateData()));

  // Future<void> getProducts({required int productId}) async {
  //   try {
  //     emit(SalesOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.loading)));
  //     final request = GetProductsRequest();
  //     final products = await _dataRepository.getProductById(id: productId);
  //     emit(SalesOrderState.getProducts(
  //         data: state.data?.copyWith(
  //             status: StatusType.loaded, product: products.data ?? [])));
  //   } catch (error) {
  //     //debugPrint('Get Products Error: $error');
  //     emit(SalesOrderState.status(
  //         data: state.data?.copyWith(status: StatusType.error)));
  //     Helpers.handleErrorApp(error: error);
  //   } finally {
  //     UIHelpers.dismissLoading();
  //   }
  // }
  // Future<void> getVariants({required List<int> ids}) async {
  //   try{
  //     late List<VariantsResponse> variant2 = [];
  //     VariantsResponse variant3;
  //     await Future.forEach<int>(ids, (item) async{
  //       variant3 = await _dataRepository.getVariants();
  //       variant2.add(variant3);

  //     });
  //     emit(SalesOrderState.getVariants(data: state.data?.copyWith() ));
  //   } catch (error){
  //     emit(_$SalesOrderState.status())
  //   }
  // }
  Future<void> getProducts({required List<int> ids}) async {
    print("hello");
    try {
      emit(SalesOrderState.status(
          data: state.data!.copyWith(status: StatusType.loading)));
      late List<ProductResponse> product2 = [];
      ProductResponse product3;
      await Future.forEach<int>(ids, (item) async {
        product3 = await _dataRepository.getProductById(id: item);
        product2.add(product3);
      });
      // ids.forEach((element) async {
      //   print("id = $element");
      //   // product3 = await _dataRepository.getProductById(id: 16);
      //   // print("product3 = #######################");
      //   // print(product3.data![0].name);
      //   product2.add(product3);
      // });
      print('product 2: ');
      print(product2);
      emit(SalesOrderState.getProducts(
          data: state.data
              ?.copyWith(status: StatusType.loaded, product: product2 ?? [])));
    } catch (error) {
      emit(SalesOrderState.status(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getSell() async {
    List<SellData> _sells = [...state.data!.sells];
    int page = state.data!.page! + 1;
    if (page != 1) {
      _sells.removeLast();
    }
    try {
      if (state.data!.page! == 0) {
        emit(SalesOrderState.getSell(
            data: state.data?.copyWith(status: StatusType.loading)));
      }
      final request = GetSellRequest();
      final response =
          await _dataRepository.getSell(request: request, page: page);
      // print(response.toJson());
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
              response: response,
              page: response.meta!.currentPage,
              status: StatusType.loaded,
              sells: response.data ?? [],
              sellsOriginal: response.data ?? [])));
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.loading)));
      var lens = state.data?.sells.length;
      _sells.addAll(state.data!.sells);
      _sells.add(state.data!.sells[9]);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
        status: response.meta!.currentPage! < response.meta!.lastPage!
            ? StatusType.loadmore
            : StatusType.loaded,
        sells: _sells,
      )));
    } catch (error) {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> getSellReturn() async {
    try {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(returnStatus: StatusType.loading)));
      final request = GetSellRequest();
      final response = await _dataRepository.getSellReturn(request: request);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
              returnStatus: StatusType.loaded,
              returnSells: response.data ?? [],
              returnSellsOriginal: response.data ?? [])));
    } catch (error) {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(returnStatus: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> searchSell({required String searchText}) async {
    List<SellData> sellOriginal = [...state.data!.sellsOriginal];
    emit(SalesOrderState.status(
        data: state.data?.copyWith(status: StatusType.loading)));
    if (searchText.isEmpty) {
      emit(SalesOrderState.getSell(
          data: state.data
              ?.copyWith(sells: sellOriginal, status: StatusType.loaded)));
    } else {
      final searchTextVN = TiengViet.parse(searchText.toLowerCase());
      final sells = sellOriginal
          .where((element) =>
              element.contact!.name!.toLowerCase().contains(searchTextVN))
          .toList();
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(sells: sells, status: StatusType.loaded)));
    }
  }

  Future<void> setStateDefault() async {
    emit(SalesOrderState.getSell(
        data: state.data?.copyWith(
      page: 0,
      sells: [],
      sellsOriginal: [],
    )));
  }

  Future<void> fillterSell(
      {String? dateBegin,
      String? dateEnd,
      String? locationId,
      String? customerId,
      String? paymentStatus,
      int? onlySubscriptions,
      String? shippingStatus}) async {
    List<SellData> _sells = [...state.data!.sells];
    int page = state.data!.page! + 1;
    try {
      UIHelpers.showLoading(message: 'Loading...');
      if (state.data!.page! == 0) {
        emit(SalesOrderState.getSell(
            data: state.data?.copyWith(status: StatusType.loading)));
      }
      // final request = GetSellRequest(
      //   startDate: dateBegin.toString(),
      //   endDate: dateEnd.toString(),
      // );
      final response = await _dataRepository.getOrder(
          endDate: dateEnd,
          startDate: dateBegin,
          page: page,
          locationId: locationId,
          customerId: customerId,
          paymentStatus: paymentStatus,
          onlySubscriptions: onlySubscriptions,
          shippingStatus: shippingStatus);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
              response: response,
              page: response.meta!.currentPage,
              sells: response.data ?? [],
              sellsOriginal: response.data ?? [],
              status: StatusType.loaded)));
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.loading)));
      _sells.addAll(state.data!.sells);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sells: _sells,
      )));
      // if (dateBegin == null) {
      //   emit(SalesOrderState.getSell(
      //       data: state.data?.copyWith(
      //           page: response.meta!.currentPage,
      //           sells: sellOriginal,
      //           status: StatusType.loaded)));
      // } else {
      //   //final date = TiengViet.parse(searchText.toLowerCase());
      //   final sells = sellOriginal.where((element) {
      //     var date = DateTime.parse(element.transactionDate!);
      //     return date.isAfter(dateBegin) && date.isBefore(dateEnd!);
      //   }).toList();
      //   emit(SalesOrderState.getSell(
      //       data:
      //           state.data?.copyWith(sells: sells, status: StatusType.loaded)));
      // }
    } catch (error) {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> fillterSellbyShippedStatus() async {
    List<SellData> _sells = [...state.data!.sells];
    int page = state.data!.page! + 1;
    try {
      if (state.data!.page! == 0) {
        emit(SalesOrderState.getSell(
            data: state.data?.copyWith(status: StatusType.loading)));
      }
      final response = await _dataRepository.getOrder(
          endDate: "",
          startDate: "",
          page: page,
          locationId: "",
          customerId: "",
          paymentStatus: "",
          onlySubscriptions: 0,
          shippingStatus: "Shipped");
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
              shippedOrder: response.meta?.total, status: StatusType.loaded)));
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.loading)));
      _sells.addAll(state.data!.sells);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sells: _sells,
      )));
    } catch (error) {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> fillterSellbyOrderedStatus() async {
    List<SellData> _sells = [...state.data!.sells];
    int page = state.data!.page! + 1;
    try {
      if (state.data!.page! == 0) {
        emit(SalesOrderState.getSell(
            data: state.data?.copyWith(status: StatusType.loading)));
      }
      final response = await _dataRepository.getOrder(
          endDate: "",
          startDate: "",
          page: page,
          locationId: "",
          customerId: "",
          paymentStatus: "",
          onlySubscriptions: 0,
          shippingStatus: "Ordered");
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
              orderedOrder: response.meta?.total, status: StatusType.loaded)));
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.loading)));
      _sells.addAll(state.data!.sells);
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(
        status: StatusType.loaded,
        sells: _sells,
      )));
    } catch (error) {
      emit(SalesOrderState.getSell(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> addSell({required AddSellRequest request}) async {
    try {
      emit(SalesOrderState.addSell(
          data: state.data?.copyWith(status: StatusType.loading)));
      await _dataRepository.addSell(request: request);
      emit(SalesOrderState.addSell(
          data: state.data?.copyWith(status: StatusType.loaded)));
    } catch (error) {
      emit(SalesOrderState.addSell(
          data: state.data?.copyWith(status: StatusType.error)));
      Helpers.handleErrorApp(error: error);
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
