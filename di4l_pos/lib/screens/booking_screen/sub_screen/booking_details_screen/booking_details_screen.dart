import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/booking/response/booking_response.dart';
import 'package:di4l_pos/screens/booking_screen/cubit/booking_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({Key? key, this.booking}) : super(key: key);
  final Booking? booking;
  static MultiBlocProvider provider({Booking? booking}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingCubit(),
        ),
      ],
      child: BookingDetailsScreen(
        booking: booking,
      ),
    );
  }

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  List<String> bookingStatusList = [
    "waiting",
    "booked",
    "completed",
    "cancelled",
  ];
  String? bookingStatus;
  @override
  void initState() {
    bookingStatus = widget.booking?.bookingStatus;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      title: Text(
        'booking_details'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      backgroundColor: GlobalColors.bgWebColor,
    );
  }

  SafeArea buildBody() {
    final name =
        '${widget.booking?.correspondent?.surname ?? ''} ${widget.booking?.correspondent?.firstName ?? ''} ${widget.booking?.correspondent?.lastName ?? ''}';
    final bookStart = DateFormat("dd-MM-yyyy hh:mm a").format(
        DateFormat("yyyy-MM-dd hh:mm:ss").parse(widget.booking!.bookingStart!));
    final bookEnd = DateFormat("dd-MM-yyyy hh:mm a").format(
        DateFormat("yyyy-MM-dd hh:mm:ss").parse(widget.booking!.bookingEnd!));
    return SafeArea(
      child: BlocListener<BookingCubit, BookingState>(
        listener: (context, state) {
          if (state.data!.error != '') {
            UIHelpers.showDialogDefaultBloc(
              status: state.data!.status,
              text: state.data!.error,
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: '${'customer'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: widget.booking?.customer?.name ?? '--',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'service_staff'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: widget.booking?.waiter ?? '--',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'correspondent'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: name.trim().isEmpty ? '--' : name,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'location'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: widget.booking?.location?.name ?? '--',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'table'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: widget.booking?.table?.name ?? '--',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'from'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: bookStart,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'to'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: bookEnd,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: '${'note'.tr}: ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: widget.booking?.bookingNote ?? '--',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomDropDownWithT<String>(
                  items: bookingStatusList
                      .map<DropdownMenuItem<String>>(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            e.tr,
                          ),
                        ),
                      )
                      .toList(),
                  labelText: 'booking_status'.tr,
                  value: bookingStatus,
                  onChanged: (value) {
                    setState(() {
                      bookingStatus = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<BookingCubit>().updateBookingStatus(
                          id: widget.booking!.id!,
                          status:
                              bookingStatus ?? widget.booking!.bookingStatus!,
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    minimumSize: const Size.fromHeight(
                      48,
                    ),
                  ),
                  child: Text('save'.tr),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<BookingCubit>().deleteBooking(
                          id: widget.booking!.id!,
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    minimumSize: const Size.fromHeight(
                      48,
                    ),
                  ),
                  child: Text('delete'.tr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
