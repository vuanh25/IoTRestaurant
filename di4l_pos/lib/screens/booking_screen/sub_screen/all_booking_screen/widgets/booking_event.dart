import 'package:di4l_pos/common/global_formatter.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/models/booking/response/booking_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BookingEventCard extends StatelessWidget {
  const BookingEventCard({Key? key, this.booking}) : super(key: key);

  final Booking? booking;
  @override
  Widget build(BuildContext context) {
    Color statusColor = Colors.white;
    switch (booking?.bookingStatus) {
      case 'waiting':
        statusColor = Colors.yellow;
        break;
      case 'booked':
        statusColor = Colors.blue;
        break;
      case 'completed':
        statusColor = Colors.green;
        break;
      case 'cancelled':
        statusColor = Colors.redAccent;
        break;
    }
    final bookStart = DateFormat("dd-MM-yyyy hh:mm a").format(
        DateFormat("yyyy-MM-dd hh:mm:ss").parse(booking!.bookingStart!));
    final bookEnd = DateFormat("dd-MM-yyyy hh:mm a")
        .format(DateFormat("yyyy-MM-dd hh:mm:ss").parse(booking!.bookingEnd!));
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: '${'customer'.tr}: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: booking?.customer?.name ?? '--',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '${'location'.tr}: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: booking?.location?.name ?? '--',
                      style: const TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '${'from'.tr}: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
              RichText(
                text: TextSpan(
                  text: '${'to'.tr}: ',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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
            ],
          ),
          Flexible(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                padding: const EdgeInsets.all(3),
                color: statusColor,
                child: Text(
                  booking?.bookingStatus?.tr ?? '--',
                  style: GlobalStyles.robotoRegular(context).copyWith(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
