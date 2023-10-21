import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/common/ui_helpers.dart';
import 'package:di4l_pos/models/business_location/response/business_location.dart';
import 'package:di4l_pos/models/invoice/response/invoice_layout_response.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:di4l_pos/models/printer/response/printer_response.dart';
import 'package:di4l_pos/screens/business_screen/cubit/business_cubit.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/screens/location_screen/sub_screen/location_details_screen/cubit/invoice_layout_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/screens/printer_screen/cubit/printer_cubit.dart';
import 'package:di4l_pos/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BusinessLocationSettings extends StatefulWidget {
  const BusinessLocationSettings({Key? key, this.businessLocation})
      : super(key: key);
  final BusinessLocation? businessLocation;

  static MultiBlocProvider provider({BusinessLocation? businessLocation}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PrinterCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceCubit(),
        ),
        BlocProvider(
          create: (context) => InvoiceLayoutCubit(),
        ),
        BlocProvider(
          create: (context) => BusinessCubit(),
        ),
      ],
      child: BusinessLocationSettings(
        businessLocation: businessLocation,
      ),
    );
  }

  @override
  State<BusinessLocationSettings> createState() =>
      _BusinessLocationSettingsState();
}

class _BusinessLocationSettingsState extends State<BusinessLocationSettings>
    with AfterLayoutMixin {
  final autoPrintReceipt = [1, 0];
  final printerType = ['browser', 'printer'];

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        if (state.data!.error != '') {
          UIHelpers.showDialogDefaultBloc(
            status: state.data!.status,
            text: state.data!.error,
          );
        }
      },
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildBody(),
      ),
    );
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<PrinterCubit>().getPrinterById(
          widget.businessLocation?.printerId,
        );
    context
        .read<InvoiceCubit>()
        .getInvoiceById(widget.businessLocation?.invoiceSchemeId);

    context.read<InvoiceLayoutCubit>().getLayout(
          widget.businessLocation?.invoiceLayoutId,
        );
    context.read<BusinessCubit>().getBusiness(widget.businessLocation!);
  }

  MyAppBar buildAppBar(BuildContext context) {
    return MyAppBar(
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
      title: Text(
        'printerSetting'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          fontSize: 18,
          color: GlobalColors.primaryWebColor,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  SafeArea buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: BlocBuilder<BusinessCubit, BusinessState>(
            builder: (context, state) {
              final businessLocation = state.data?.business;
              return Column(
                children: [
                  CustomDropDownWithT<int>(
                    labelText: 'print_invoice'.tr,
                    items: autoPrintReceipt
                        .map<DropdownMenuItem<int>>(
                          (e) => DropdownMenuItem<int>(
                            value: e,
                            child: Text(e == 1 ? 'Yes' : 'No'),
                          ),
                        )
                        .toList(),
                    value: businessLocation?.printReceiptOnInvoice,
                    onChanged: (value) {
                      final business = businessLocation?.copyWith(
                          printReceiptOnInvoice: value);
                      context.read<BusinessCubit>().getBusiness(business!);
                    },
                  ),
                  CustomDropDownWithT<String>(
                    labelText: 'printer_type'.tr,
                    items: printerType
                        .map<DropdownMenuItem<String>>(
                          (e) => DropdownMenuItem<String>(
                            value: e,
                            child: Text(e.capitalize!),
                          ),
                        )
                        .toList(),
                    value: businessLocation?.receiptPrinterType,
                    onChanged: (value) {
                      final business =
                          businessLocation?.copyWith(receiptPrinterType: value);
                      context.read<BusinessCubit>().getBusiness(business!);
                    },
                  ),
                  if (state.data?.business?.receiptPrinterType == 'printer')
                    BlocBuilder<PrinterCubit, PrinterState>(
                      builder: (context, state) {
                        final printersList = state.data?.printers;
                        final currentPrinter = state.data?.printer;
                        return CustomDropDownWithT<Printer>(
                          labelText: "chosen_printer".tr,
                          items: printersList!
                              .map<DropdownMenuItem<Printer>>(
                                (e) => DropdownMenuItem<Printer>(
                                  value: e,
                                  child: Text(e.name ?? ''),
                                ),
                              )
                              .toList(),
                          value: currentPrinter,
                          onChanged: (value) {
                            final business = businessLocation?.copyWith(
                                printerId: value!.id);
                            context
                                .read<BusinessCubit>()
                                .getBusiness(business!);
                            context.read<PrinterCubit>().getPrinter(value!);
                          },
                        );
                      },
                    ),
                  BlocBuilder<InvoiceCubit, InvoiceState>(
                    builder: (context, state) {
                      final invoiceList = state.data?.invoices;
                      final currentInvoiceScheme = state.data?.invoice;
                      return CustomDropDownWithT<InvoiceSchema>(
                        labelText: "invoice_schemes".tr,
                        items: invoiceList!
                            .map<DropdownMenuItem<InvoiceSchema>>(
                              (e) => DropdownMenuItem<InvoiceSchema>(
                                value: e,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        value: currentInvoiceScheme,
                        onChanged: (value) {
                          final business = businessLocation?.copyWith(
                              invoiceSchemeId: value!.id);
                          context.read<BusinessCubit>().getBusiness(business!);
                          context.read<InvoiceCubit>().setInvoice(value!);
                        },
                      );
                    },
                  ),
                  BlocBuilder<InvoiceLayoutCubit, InvoiceLayoutState>(
                    builder: (context, state) {
                      final invoiceLayoutList = state.data?.invoices;
                      final currentLayout = state.data?.invoice;
                      return CustomDropDownWithT<InvoiceLayout>(
                        labelText: "invoice_layouts".tr,
                        items: invoiceLayoutList!
                            .map<DropdownMenuItem<InvoiceLayout>>(
                              (e) => DropdownMenuItem<InvoiceLayout>(
                                value: e,
                                child: Text(e.name ?? ''),
                              ),
                            )
                            .toList(),
                        value: currentLayout,
                        onChanged: (value) {
                          final business = businessLocation?.copyWith(
                              invoiceLayoutId: value!.id);
                          context.read<BusinessCubit>().getBusiness(business!);
                          context.read<InvoiceLayoutCubit>().setLayout(value!);
                        },
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await context
                          .read<BusinessCubit>()
                          .updateLocationSettings(
                            businessLocation!.id!,
                            businessLocation.printReceiptOnInvoice,
                            businessLocation.receiptPrinterType,
                            businessLocation.printerId,
                            businessLocation.invoiceLayoutId,
                            businessLocation.invoiceSchemeId,
                          );
                    },
                    child: Text(
                      'save'.tr,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
