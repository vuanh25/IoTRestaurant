import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/extensions/string_extension.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/payment_accounts/response/account_type_response.dart';
import 'package:di4l_pos/models/payment_accounts/response/payment_accounts_response.dart';

import 'package:di4l_pos/route_generator.dart';
import 'package:di4l_pos/screens/payment_accounts_screen/cubit/payment_accounts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class AccountTypeWidget extends StatelessWidget {
  final List<AccType> accountTypes;
  final AccType accType;
  final VoidCallback? onDelete;
  const AccountTypeWidget({
    Key? key,
    required this.accType,
    this.onDelete,
    required this.accountTypes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AccType? parentAccount = accountTypes.firstWhereOrNull(
        (item) => item.id == accType.parentAccountTypeId) as AccType?;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () => navigator!.pushNamed(
          RouteGenerator.addAccountTypeScreen,
          arguments: {
            'ADD_ACCOUNT_TYPE': AddType.UPDATE,
            'ACCOUNT_TYPE_MODEL': accType
          },
        ).whenComplete(
            () => context.read<PaymentAccountsCubit>().getAccountTypes()),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: GlobalColors.whiteColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'name'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '${accType.name}',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                    const SizedBox(height: Dimensions.PADDING_SIZE_EXTRA_SMALL),
                    Row(
                      children: [
                        Text(
                          'parent_account_type'.tr,
                          style: const TextStyle(
                            fontSize: 16,
                            color: GlobalColors.kGreyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          parentAccount?.name ?? '',
                          style: GlobalStyles.titilliumSemiBold1(context),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 15,
              right: 8,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: onDelete,
                  icon: const Icon(
                    Icons.delete,
                    size: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
