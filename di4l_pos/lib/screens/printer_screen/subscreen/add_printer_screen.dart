import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/enums/status_type.dart';
import 'package:di4l_pos/models/printer/request/add_printer_request.dart';
import 'package:di4l_pos/models/printer/response/printer_response.dart';
import 'package:di4l_pos/screens/printer_screen/cubit/printer_cubit.dart';
import 'package:di4l_pos/screens/printer_screen/subscreen/cubit/add_printer_cubit.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:di4l_pos/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:di4l_pos/common/global_styles.dart';

class AddPrinterScreen extends StatefulWidget {
  final AddType? addType;
  final Printer? printer;

  static MultiBlocProvider provider({AddType? addType, Printer? printer}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AddPrinterCubit>(
          create: (context) => AddPrinterCubit(),
        ),
        BlocProvider<PrinterCubit>(
          create: (context) => PrinterCubit(),
        ),
      ],
      child: AddPrinterScreen(
        addType: addType,
        printer: printer,
      ),
    );
  }

  const AddPrinterScreen({Key? key, this.addType, this.printer})
      : super(key: key);

  @override
  State<AddPrinterScreen> createState() => _AddPrinterScreenState();
}

class _AddPrinterScreenState extends State<AddPrinterScreen>
    with AfterLayoutMixin {
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController charPerLine = TextEditingController();
  TextEditingController ipAddress = TextEditingController();
  TextEditingController port = TextEditingController();
  final formKey = GlobalKey<FormState>();
  List<String> connectionTypes = ['network', 'windows', 'linux'];
  List<String> capabilityProfiles = [
    'default',
    'simple',
    'star branded',
    'espon tep',
    'P822D'
  ];
  String? selectedConnectionType;
  String? selectedCapabilityProfile;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    if (widget.addType == AddType.UPDATE) {
      name.text = widget.printer!.name!;
      charPerLine.text = widget.printer!.charPerLine!;
      ipAddress.text = widget.printer!.ipAddress!;
      port.text = widget.printer!.port!;
      globalKey.currentContext!
          .read<AddPrinterCubit>()
          .setSelectedCapabilityProfile(widget.printer!.capabilityProfile);
      globalKey.currentContext!
          .read<AddPrinterCubit>()
          .setSelectedConnectionType(widget.printer!.connectionType);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPrinterCubit, AddPrinterState>(
      listener: (context, state) {
        if (state.data!.status == StatusType.error) {
          UIHelpers.showSnackBar(
              message: state.data!.error!, type: SnackBarType.ERROR);
        } else if (state.data!.status == StatusType.loaded) {
          UIHelpers.showSnackBar(
              message: state.data!.error!, type: SnackBarType.SUCCESS);
        }
      },
      child: BlocBuilder<AddPrinterCubit, AddPrinterState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.grey[100],
            key: globalKey,
            resizeToAvoidBottomInset: false,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: CustomAppBar(
                backgroundColor: Colors.white,
                textColor: GlobalColors.getTextTitle(context),
                title: widget.addType == AddType.UPDATE
                    ? 'update_printer'.tr
                    : 'add_printer'.tr,
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0,
                              vertical: Dimensions.PADDING_SIZE_SMALL),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// Product
                              Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    Dimensions.PADDING_SIZE_DEFAULT,
                                  ),
                                  child: Column(
                                    children: [
                                      CustomTextField(
                                        redLabel: ' *',
                                        hintText: 'example_printer_name'.tr,
                                        controller: name,
                                        hintLabel: 'printer_name'.tr,
                                      ),
                                      const SizedBox(
                                        height: Dimensions.PADDING_SIZE_SMALL,
                                      ),
                                      CustomTextField(
                                        redLabel: " *",
                                        controller: ipAddress,
                                        hintText: '192.168.1.1',
                                        hintLabel: 'ip_address'.tr,
                                        readOnly: (state.data!
                                                        .selectedConnectionType ==
                                                    "windows" ||
                                                state.data!
                                                        .selectedConnectionType ==
                                                    "linux")
                                            ? false
                                            : true,
                                      ),
                                      const SizedBox(
                                        height: Dimensions.PADDING_SIZE_SMALL,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: CustomTextField(
                                              redLabel: ' *',
                                              hintText: '10'.tr,
                                              controller: charPerLine,
                                              hintLabel: 'char_per_line'.tr,
                                            ),
                                          ),
                                          const SizedBox(
                                            width:
                                                Dimensions.PADDING_SIZE_LARGE,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: CustomTextField(
                                              redLabel: ' *',
                                              controller: port,
                                              hintText: '9100',
                                              hintLabel: 'port'.tr,
                                              readOnly: (state.data!
                                                              .selectedConnectionType ==
                                                          "windows" ||
                                                      state.data!
                                                              .selectedConnectionType ==
                                                          "linux")
                                                  ? false
                                                  : true,
                                            ),
                                          ),
                                        ],
                                      ),
                                      // category
                                      const SizedBox(
                                        height: Dimensions.PADDING_SIZE_SMALL,
                                      ),
                                      InputDecorator(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          label: Text(
                                            'capability_profile'.tr,
                                            textScaleFactor: 1.5,
                                            style: GlobalStyles.titilliumBold(
                                                context),
                                          ),
                                        ),
                                        child: DropdownButton<String>(
                                          value: state.data
                                                  ?.selectedCapabilityNetwork ??
                                              capabilityProfiles[0],
                                          onChanged:
                                              (String? capabilityProfile) {
                                            selectedCapabilityProfile =
                                                capabilityProfile;
                                            globalKey.currentContext!
                                                .read<AddPrinterCubit>()
                                                .setSelectedCapabilityProfile(
                                                    capabilityProfile);
                                          },
                                          items: capabilityProfiles
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: SizedBox(
                                                width: Get.width * 0.8,
                                                child: Text(
                                                  value,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      InputDecorator(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          label: Text(
                                            'connection_type'.tr,
                                            textScaleFactor: 1.5,
                                            style: GlobalStyles.titilliumBold(
                                                context),
                                          ),
                                        ),
                                        child: DropdownButton<String>(
                                          style: const TextStyle(
                                              color: Colors.black),
                                          value: state.data
                                                  ?.selectedConnectionType ??
                                              connectionTypes[0],
                                          onChanged: (String? connectionType) {
                                            selectedConnectionType =
                                                connectionType;
                                            globalKey.currentContext!
                                                .read<AddPrinterCubit>()
                                                .setSelectedConnectionType(
                                                    connectionType);
                                          },
                                          items: connectionTypes
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: SizedBox(
                                                width: Get.width * 0.8,
                                                child: Text(
                                                  value,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.addType == AddType.UPDATE
                      ? CustomButton(
                          type: ButtonType.BUTTON_TEXT,
                          color: Colors.white,
                          label: "delete".tr,
                          style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                          borderColor: Colors.red,
                          onPressed: () {},
                        )
                      : CustomButton(
                          type: ButtonType.BUTTON_TEXT,
                          color: Colors.white,
                          label: "add_more".tr,
                          style: const TextStyle(
                              color: GlobalColors.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.FONT_SIZE_LARGE),
                          borderColor: GlobalColors.primaryColor,
                          onPressed: () async {},
                        ),
                  const SizedBox(
                    width: Dimensions.PADDING_SIZE_SMALL,
                  ),
                  CustomButton(
                    type: ButtonType.BUTTON_TEXT,
                    color: GlobalColors.primaryColor,
                    label: "save".tr,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.FONT_SIZE_LARGE),
                    borderColor: GlobalColors.primaryColor,
                    onPressed: () {
                      final request = AddPrinterRequest(
                        name: name.text,
                        connectionType: state.data!.selectedConnectionType,
                        capabilityProfile:
                            state.data!.selectedCapabilityNetwork,
                        charPerLine: charPerLine.text,
                        ipAddress: ipAddress.text,
                        port: port.text,
                        path: "",
                      );
                      if (widget.addType == AddType.NEW) {
                        globalKey.currentContext!
                            .read<AddPrinterCubit>()
                            .addPrinter(request: request)
                            .then(
                              (value) => globalKey.currentContext!
                                  .read<PrinterCubit>()
                                  .getPrinters(),
                            );
                      } else {
                        globalKey.currentContext!
                            .read<AddPrinterCubit>()
                            .updatePrinter(
                                request: request,
                                id: widget.printer!.id!.toInt())
                            .then(
                              (value) => globalKey.currentContext!
                                  .read<PrinterCubit>()
                                  .getPrinters(),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
