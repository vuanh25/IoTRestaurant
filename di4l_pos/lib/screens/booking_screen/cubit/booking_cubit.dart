import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/models/booking/request/create_booking_request.dart';
import 'package:di4l_pos/models/booking/request/update_booking_request.dart';
import 'package:di4l_pos/models/booking/response/booking_response.dart';
import 'package:di4l_pos/repositories/data_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

part 'booking_state.dart';
part 'booking_cubit.freezed.dart';

class BookingCubit extends Cubit<BookingState> {
  /// MARK: - Initials;
  final _dataRepository = getIt<DataRepository>();

  BookingCubit() : super(const BookingState.initial(data: BookingStateData()));

  Future<void> getBookings() async {
    try {
      emit(
        BookingState.getBookings(
          data: state.data?.copyWith(
            status: StatusType.loading,
          ),
        ),
      );
      final response = await _dataRepository.getBookings();
      List<Booking> bookingList = response.data ?? [];
      bookingList.sort((a, b) {
        final dateBooking1 =
            DateFormat('yyyy-MM-dd HH:mm:ss').parse(a.bookingStart!);
        final dateBooking2 =
            DateFormat('yyyy-MM-dd HH:mm:ss').parse(b.bookingStart!);
        return dateBooking2.compareTo(dateBooking1);
      });
      emit(
        BookingState.getBookings(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            bookings: bookingList,
            bookingsOriginal: bookingList,
          ),
        ),
      );
    } catch (error) {
      print(error);
      Helpers.handleErrorApp(error: error, isShowDialog: true);
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  Future<void> createBooking({
    required DateTime bookingStart,
    required DateTime bookingEnd,
    String? bookingNote,
    int? contactId,
    int? locationId,
    int? waiterId,
    int? tableId,
    int? serviceId,
    int? correspondentId,
  }) async {
    if (contactId == null || locationId == null) {
      UIHelpers.showSnackBar(
        message: 'No customer or location was selected',
        type: SnackBarType.ERROR,
      );
      return;
    }
    if (bookingStart.isAfter(bookingEnd)) {
      UIHelpers.showSnackBar(
        message: 'Starting time is after ending time',
        type: SnackBarType.ERROR,
      );
      return;
    }
    try {
      emit(
        BookingState.createBooking(
          data: state.data?.copyWith(
            status: StatusType.loading,
            error: 'Loading...',
          ),
        ),
      );
      final request = CreateBookingRequest(
        bookingStart: DateFormat('yyyy-MM-dd HH:mm').format(bookingStart),
        bookingEnd: DateFormat('yyyy-MM-dd HH:mm').format(bookingEnd),
        bookingNote: bookingNote,
        contactId: contactId,
        locationId: locationId,
        resWaiterId: waiterId,
        resTableId: tableId,
        typesOfServicesId: serviceId,
        correspondent: correspondentId,
      );
      final response = await _dataRepository.createBooking(request: request);
      if (response.success == 1) {
        await Future.delayed(
          const Duration(seconds: 1),
          () {
            navigator!.pop();
          },
        );
        emit(
          BookingState.createBooking(
            data: state.data?.copyWith(
              status: StatusType.loaded,
              error: response.msg ?? '',
            ),
          ),
        );
      } else {
        emit(
          BookingState.createBooking(
            data: state.data?.copyWith(
              status: StatusType.error,
              error: response.msg ?? '',
            ),
          ),
        );
      }
    } catch (error) {
      emit(
        BookingState.createBooking(
          data: state.data?.copyWith(
            status: StatusType.error,
            error: error.toString(),
          ),
        ),
      );
      print('ERROR create booking $error');
      Helpers.handleErrorApp(error: error);
    } finally {
      await Future.delayed(
        const Duration(seconds: 2),
        () => navigator!.pop(),
      );
    }
  }

  Future<void> updateBookingStatus(
      {required int id, required String status}) async {
    try {
      emit(
        BookingState.updateBooking(
          data: state.data
              ?.copyWith(status: StatusType.loading, error: 'Loading...'),
        ),
      );
      final request = UpdateBookingRequest(bookingStatus: status);
      final response = await _dataRepository.updateBookingStatus(
        id: id,
        request: request,
      );
      if (response.success == 1) {
        await Future.delayed(
          const Duration(seconds: 1),
          () {
            navigator!.pop();
          },
        );
        emit(
          BookingState.updateBooking(
            data: state.data?.copyWith(
              status: StatusType.loaded,
              error: response.msg ?? '',
            ),
          ),
        );
      } else {
        emit(
          BookingState.updateBooking(
            data: state.data?.copyWith(
              status: StatusType.error,
              error: response.msg ?? '',
            ),
          ),
        );
      }
    } catch (error) {
      Helpers.handleErrorApp(error: error);
      emit(
        BookingState.updateBooking(
          data: state.data?.copyWith(
            status: StatusType.error,
            error: error.toString(),
          ),
        ),
      );
    } finally {
      Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
    }
  }

  Future<void> deleteBooking({required int id}) async {
    UIHelpers.showCustomDialog(
      isShowClose: true,
      context: Get.context!,
      message: 'Are you sure you want to remove this booking ?',
      onComfirm: () async {
        try {
          navigator!.pop();
          emit(
            BookingState.deleteBooking(
              data: state.data
                  ?.copyWith(status: StatusType.loading, error: 'Loading...'),
            ),
          );
          final response = await _dataRepository.deleteBooking(id: id);
          if (response.success == 1) {
            await Future.delayed(
              const Duration(seconds: 1),
              () {
                navigator!.pop();
              },
            );
            emit(
              BookingState.deleteBooking(
                data: state.data?.copyWith(
                  status: StatusType.loaded,
                  error: response.msg ?? '',
                ),
              ),
            );
          } else {
            emit(
              BookingState.deleteBooking(
                data: state.data?.copyWith(
                  status: StatusType.error,
                  error: response.msg ?? '',
                ),
              ),
            );
          }
        } catch (error) {
          emit(
            BookingState.deleteBooking(
              data: state.data?.copyWith(
                status: StatusType.error,
                error: error.toString(),
              ),
            ),
          );
          Helpers.handleErrorApp(error: error);
        } finally {
          Future.delayed(const Duration(seconds: 2), () => navigator!.pop());
        }
      },
    );
  }

  Future<void> getBookingsByFilter({
    int? locationId,
    DateTime? dateStart,
    DateTime? dateEnd,
    int? customerId,
    String? bookingStatus,
  }) async {
    List<Booking> bookingListOriginal = [...state.data!.bookingsOriginal];
    emit(
      BookingState.getBookingsByFilter(
        data: state.data?.copyWith(
          status: StatusType.loading,
        ),
      ),
    );
    List<Booking> searchBookings = [];
    if (bookingStatus != null && bookingStatus != 'all') {
      bookingListOriginal = bookingListOriginal
          .where((element) => element.bookingStatus == bookingStatus)
          .toList();
    }
    if (customerId != null) {
      bookingListOriginal = bookingListOriginal
          .where((element) => element.customer?.id == customerId)
          .toList();
    }
    if (locationId == null && dateStart == null && dateEnd == null) {
      emit(
        BookingState.getBookingsByFilter(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            bookings: bookingListOriginal,
          ),
        ),
      );
      return;
    }
    if (locationId != null && dateStart == null && dateEnd == null) {
      searchBookings = bookingListOriginal.where((element) {
        return element.locationId == locationId;
      }).toList();
      emit(
        BookingState.getBookingsByFilter(
          data: state.data?.copyWith(
            status: StatusType.loaded,
            bookings: searchBookings,
          ),
        ),
      );
      return;
    }
    if (dateStart == null || dateEnd == null || dateStart.isAfter(dateEnd)) {
      UIHelpers.showSnackBar(
        type: SnackBarType.ERROR,
        message: 'Invalid date range',
      );
      emit(
        BookingState.getBookingsByFilter(
          data: state.data?.copyWith(
            status: StatusType.loaded,
          ),
        ),
      );
      return;
    }
    searchBookings = bookingListOriginal.where(
      (element) {
        DateTime startDate =
            DateFormat('yyyy-MM-dd HH:mm:ss').parse(element.bookingStart!);
        DateTime endDate =
            DateFormat('yyyy-MM-dd HH:mm:ss').parse(element.bookingEnd!);
        DateTime startingDate = DateFormat('dd-MM-yyyy')
            .parse(DateFormat('dd-MM-yyyy').format(startDate));
        DateTime endingDate = DateFormat('dd-MM-yyyy')
            .parse(DateFormat('dd-MM-yyyy').format(endDate));
        if (locationId == null) {
          return startingDate.isBefore(dateEnd.add(const Duration(days: 1))) &&
              startingDate
                  .isAfter(dateStart.subtract(const Duration(days: 1))) &&
              endingDate.isBefore(dateEnd.add(const Duration(days: 1))) &&
              endingDate.isAfter(dateStart.subtract(const Duration(days: 1)));
        }
        return startingDate.isBefore(dateEnd.add(const Duration(days: 1))) &&
            startingDate.isAfter(dateStart.subtract(const Duration(days: 1))) &&
            endingDate.isBefore(dateEnd.add(const Duration(days: 1))) &&
            endingDate.isAfter(dateStart.subtract(const Duration(days: 1))) &&
            element.locationId == locationId;
      },
    ).toList();
    emit(
      BookingState.getBookingsByFilter(
        data: state.data?.copyWith(
          status: StatusType.loaded,
          bookings: searchBookings,
        ),
      ),
    );
  }

  void getBooking(Booking booking) {
    emit(
      BookingState.getBooking(
        data: state.data?.copyWith(
          booking: booking,
        ),
      ),
    );
  }
}
