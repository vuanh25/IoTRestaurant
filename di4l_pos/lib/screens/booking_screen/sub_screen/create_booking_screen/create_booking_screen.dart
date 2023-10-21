import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/contacts/response/contacts_response.dart';
import 'package:di4l_pos/models/table/response/table_response.dart';
import 'package:di4l_pos/models/user/response/user_list_response.dart';
import 'package:di4l_pos/screens/booking_screen/cubit/booking_cubit.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/business_location_picker.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/customer_picker.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/table_picker.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/user_picker.dart';
import 'package:di4l_pos/screens/booking_screen/sub_screen/create_booking_screen/widget/waiter_picker.dart';
import 'package:di4l_pos/screens/business_screen/widget/custom_textfield.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CreateBookingScreen extends StatefulWidget {
  const CreateBookingScreen({Key? key}) : super(key: key);

  static MultiBlocProvider provider() {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => BookingCubit(),
      ),
    ], child: const CreateBookingScreen());
  }

  @override
  State<CreateBookingScreen> createState() => _CreateBookingScreenState();
}

class _CreateBookingScreenState extends State<CreateBookingScreen>
    with AfterLayoutMixin {
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    // context.read<BookingCubit>().getBookings();
  }

  /// Start date
  DateTime startDate = DateTime.now();

  /// End date
  DateTime endDate = DateTime.now();

  /// Note Text controller
  final customerNoteController = TextEditingController();

  /// Booking information
  int? businessLocationId;
  String? businessLocationName;
  int? tableId;
  String? tableName;
  int? correspondentId;
  String? correspondentName;
  int? customerId;
  String? customerName;
  int? waiterId;
  String? waiterName;

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100),
      );
  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  BlocListener<BookingCubit, BookingState> buildBody() {
    return BlocListener<BookingCubit, BookingState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          UIHelpers.showDialogDefaultBloc(
            status: state.data!.status,
            text: state.data!.error,
          );
        }
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextField(
                  info: businessLocationName ?? 'business_location'.tr,
                  hint: 'business_location'.tr,
                  title: 'business_location'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    BusinessLocation? location = await showModalBottomSheet(
                      context: context,
                      builder: (context) => BusinessLocationPicker.provider(),
                    );
                    if (location != null) {
                      setState(() {
                        businessLocationName = location.name;
                      });
                      businessLocationId = location.id;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: tableName ?? 'table'.tr,
                  hint: 'table'.tr,
                  title: 'table'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.table_bar,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    TableModel? table = await showModalBottomSheet(
                      context: context,
                      builder: (context) => TablePicker.provider(
                          businessLocationId: businessLocationId),
                    );
                    if (table != null) {
                      setState(() {
                        tableName = table.name;
                      });
                      tableId = table.id;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: correspondentName ?? 'correspondent'.tr,
                  hint: 'correspondent'.tr,
                  title: 'correspondent'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    UserItem? correspondent = await showModalBottomSheet(
                      context: context,
                      builder: (context) => UserPicker.provider(),
                    );
                    if (correspondent != null) {
                      setState(() {
                        correspondentName = correspondent.fullName;
                      });
                      correspondentId = correspondent.id;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: waiterName ?? 'waiter'.tr,
                  hint: 'waiter'.tr,
                  title: 'waiter'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.support_agent,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    ContactModel? waiter = await showModalBottomSheet(
                      context: context,
                      builder: (context) => WaiterPicker.provider(),
                    );
                    if (waiter != null) {
                      setState(() {
                        waiterName = waiter.name;
                      });
                      waiterId = waiter.id;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: customerName ?? 'customer'.tr,
                  hint: 'customer'.tr,
                  title: 'customer'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    ContactModel? customer = await showModalBottomSheet(
                      context: context,
                      builder: (context) => CustomerPicker.provider(),
                    );
                    if (customer != null) {
                      setState(() {
                        customerName = customer.name;
                      });
                      customerId = customer.id;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: DateFormat('dd-MM-yyyy HH:mm').format(startDate),
                  hint: 'from'.tr,
                  title: 'from'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    DateTime? date = await pickDate();
                    if (date == null) return;
                    TimeOfDay? time = await pickTime();
                    if (time == null) return;

                    final newStartDate = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      time.hour,
                      time.minute,
                    );

                    setState(() {
                      startDate = newStartDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  info: DateFormat('dd-MM-yyyy HH:mm').format(endDate),
                  hint: 'to'.tr,
                  title: 'to'.tr,
                  isReadOnly: true,
                  headIcon: const Icon(
                    Icons.calendar_month_rounded,
                    color: Colors.black,
                  ),
                  footIcon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  onTap: () async {
                    DateTime? date = await pickDate();
                    if (date == null) return;
                    TimeOfDay? time = await pickTime();
                    if (time == null) return;

                    final newEndDate = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      time.hour,
                      time.minute,
                    );

                    setState(() {
                      endDate = newEndDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: customerNoteController,
                  maxLines: 10,
                  decoration: InputDecoration(
                    labelText: 'note'.tr,
                    labelStyle: const TextStyle(
                      fontSize: 18,
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                    disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.read<BookingCubit>().createBooking(
                          bookingStart: startDate,
                          bookingEnd: endDate,
                          contactId: customerId,
                          locationId: businessLocationId,
                          tableId: tableId,
                          bookingNote: customerNoteController.text,
                          correspondentId: correspondentId,
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: GlobalColors.primaryColor,
                  ),
                  child: Text(
                    'save'.tr,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'create_booking'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: GlobalColors.primaryWebColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
