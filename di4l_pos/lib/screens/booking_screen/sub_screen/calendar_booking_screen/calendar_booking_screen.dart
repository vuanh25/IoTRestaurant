import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/booking_screen/cubit/booking_cubit.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/all_booking_screen/widgets/booking_event.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/calendar_booking_screen/widget/booking_event.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_calendar_carousel/classes/marked_date.dart';
import 'package:flutter_calendar_carousel/classes/multiple_marked_dates.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CalendarBookingScreen extends StatefulWidget {
  const CalendarBookingScreen({Key? key}) : super(key: key);

  @override
  State<CalendarBookingScreen> createState() => _CalendarBookingScreenState();
}

class _CalendarBookingScreenState extends State<CalendarBookingScreen> {
  final scrollController = ScrollController();
  DateTime _currentDate = DateTime.now();
  MultipleMarkedDates multipleMarkedDates = MultipleMarkedDates(
    markedDates: [],
  );
  EventList<BookingEvent> eventsList = EventList(
    events: {},
  );
  List<BookingEvent> showEventsList = [];
  Map<String, dynamic> colorMap = {
    'waiting': Colors.yellow,
    'booked': Colors.blue,
    'completed': Colors.green,
    'cancelled': Colors.redAccent,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollingFabAnimatedCustom(
        height: 48,
        text: 'create_booking'.tr,
        iconData: Icons.person_add_alt_1,
        scrollController: scrollController,
        onPress: () {
          navigator!
              .pushNamed(
                RouteGenerator.createBookingScreen,
              )
              .whenComplete(
                () => context.read<BookingCubit>().getBookings(),
              );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: BlocBuilder<BookingCubit, BookingState>(
          builder: (context, state) {
            final bookings = state.data?.bookings;
            multipleMarkedDates.clear();
            eventsList.clear();
            for (var book in bookings!) {
              final dateStart =
                  DateFormat('yyyy-MM-dd HH:mm:ss').parse(book.bookingStart!);
              final dateEnd =
                  DateFormat('yyyy-MM-dd HH:mm:ss').parse(book.bookingEnd!);
              final startByDateOnly = DateFormat('dd-MM-yyyy')
                  .parse(DateFormat('dd-MM-yyyy').format(dateStart));
              final endByDateOnly = DateFormat('dd-MM-yyyy')
                  .parse(DateFormat('dd-MM-yyyy').format(dateEnd));
              final difference =
                  endByDateOnly.difference(startByDateOnly).inDays;
              for (int i = 0; i <= difference; i++) {
                final dateBetween = startByDateOnly.add(
                  Duration(days: i),
                );
                eventsList.add(
                  dateBetween,
                  BookingEvent(
                    booking: book,
                    date: dateBetween,
                    dot: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 1.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorMap[book.bookingStatus],
                      ),
                      height: 5.0,
                      width: 5.0,
                    ),
                  ),
                );
              }
              multipleMarkedDates.addRange(
                MarkedDate(
                  date: startByDateOnly,
                  color: Colors.green[300]!,
                ),
                plus: difference,
              );
            }
            switch (state.data?.status) {
              case StatusType.loading:
                return const AppLoadingWidget(
                  text: 'Loading...',
                );
              case StatusType.loaded:
                showEventsList = eventsList.getEvents(_currentDate);
                return bookings.isEmpty
                    ? const NoDataWidget()
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: Get.height * 0.48,
                              padding: const EdgeInsets.all(8),
                              child: CalendarCarousel<BookingEvent>(
                                locale: Get.locale?.languageCode ?? 'en',
                                weekFormat: false,
                                onDayPressed:
                                    (DateTime date, List<BookingEvent> events) {
                                  setState(
                                    () {
                                      _currentDate = date;
                                    },
                                  );
                                },
                                daysHaveCircularBorder: null,
                                markedDateMoreShowTotal: true,
                                selectedDateTime: _currentDate,
                                multipleMarkedDates: multipleMarkedDates,
                                weekendTextStyle: const TextStyle(
                                  color: Colors.red,
                                ),
                                selectedDayTextStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                                daysTextStyle: const TextStyle(
                                  color: Colors.black,
                                ),
                                weekDayFormat: WeekdayFormat.narrow,
                                thisMonthDayBorderColor:
                                    GlobalColors.primaryColor,
                                markedDatesMap: eventsList,
                                headerTitleTouchable: true,
                              ),
                            ),
                            showEventsList.isNotEmpty
                                ? Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          const Expanded(child: Divider()),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text(
                                              '${'booking_list_on'.tr} ${DateFormat('dd-MM-yyyy').format(_currentDate)}',
                                              style: GlobalStyles.titleHeader1(
                                                      context)
                                                  .copyWith(
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                          const Expanded(child: Divider()),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          final bookingItem =
                                              showEventsList[index];
                                          return GestureDetector(
                                            onTap: () {
                                              navigator!.pushNamed(
                                                RouteGenerator
                                                    .bookingDetailsScreen,
                                                arguments: {
                                                  'BOOKING':
                                                      bookingItem.booking,
                                                },
                                              ).whenComplete(
                                                () => context
                                                    .read<BookingCubit>()
                                                    .getBookings(),
                                              );
                                            },
                                            child: BookingEventCard(
                                              booking: bookingItem.booking,
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                          height: 10,
                                        ),
                                        itemCount: showEventsList.length,
                                      ),
                                    ],
                                  )
                                : Container(
                                    height: Get.height * 0.3,
                                    alignment: Alignment.center,
                                    child: Text(
                                      'no_available_bookings_on_date'.tr,
                                      style: GlobalStyles.titleRegular(context),
                                    ),
                                  ),
                          ],
                        ),
                      );
              case StatusType.error:
                return const Error404Widget();
              default:
                return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
