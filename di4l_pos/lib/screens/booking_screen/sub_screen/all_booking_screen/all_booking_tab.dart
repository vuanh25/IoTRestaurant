import 'dart:async';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/calendar_booking_screen/widget/booking_event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/booking_screen/cubit/booking_cubit.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/all_booking_screen/widgets/booking_event.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/scroll_animated_button_widget.dart';
import 'package:di4l_pos/widgets/data/404_widget.dart';
import 'package:di4l_pos/widgets/data/app_loading_widget.dart';
import 'package:di4l_pos/widgets/data/no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AllBookingTab extends StatefulWidget {
  const AllBookingTab({Key? key}) : super(key: key);

  @override
  State<AllBookingTab> createState() => _AllBookingTabState();
}

class _AllBookingTabState extends State<AllBookingTab> {
  final scrollController = ScrollController();
  EventList<BookingEvent> eventsList = EventList(
    events: {},
  );

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<BookingCubit>().getBookings();
      },
      child: Scaffold(
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
              switch (state.data?.status) {
                case StatusType.loading:
                  return const AppLoadingWidget(
                    text: 'Loading...',
                  );
                case StatusType.loaded:
                  eventsList.clear();
                  for (var book in bookings!) {
                    final dateStart = DateFormat('yyyy-MM-dd HH:mm:ss')
                        .parse(book.bookingStart!);
                    final dateEnd = DateFormat('yyyy-MM-dd HH:mm:ss')
                        .parse(book.bookingEnd!);
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
                            height: 5.0,
                            width: 5.0,
                          ),
                        ),
                      );
                    }
                  }
                  eventsList.events = Map.fromEntries(
                      eventsList.events.entries.toList()
                        ..sort((e1, e2) => e2.key.compareTo(e1.key)));
                  return bookings.isNotEmpty
                      ? SingleChildScrollView(
                          child: Column(
                            children: [
                              for (int index = 0;
                                  index < eventsList.events.entries.length;
                                  index++) ...[
                                Row(
                                  children: [
                                    const Expanded(child: Divider()),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Text(
                                        DateFormat('EEEE, dd-MM-yyyy',
                                                Get.locale?.languageCode)
                                            .format(
                                          eventsList.events.keys
                                              .elementAt(index),
                                        ),
                                        style: GlobalStyles.robotoBold(context)
                                            .copyWith(fontSize: 16),
                                      ),
                                    ),
                                    const Expanded(child: Divider()),
                                  ],
                                ),
                                ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, i) {
                                    final booking = eventsList.events.values
                                        .elementAt(index)[i]
                                        .booking;
                                    return GestureDetector(
                                      onTap: () {
                                        navigator!.pushNamed(
                                          RouteGenerator.bookingDetailsScreen,
                                          arguments: {
                                            'BOOKING': booking,
                                          },
                                        ).whenComplete(
                                          () => context
                                              .read<BookingCubit>()
                                              .getBookings(),
                                        );
                                      },
                                      child: BookingEventCard(
                                        booking: booking,
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, i) =>
                                      const SizedBox(
                                    height: 10,
                                  ),
                                  itemCount: eventsList.events.values
                                      .elementAt(index)
                                      .length,
                                ),
                              ]
                            ],
                          ),
                        )
                      : const NoDataWidget();
                case StatusType.error:
                  return const Error404Widget();
                default:
                  return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
