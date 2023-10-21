import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_styles.dart';
import 'package:di4l_pos/enums/add_type.dart';
import 'package:di4l_pos/models/invoice/response/invoice_schemas_response.dart';
import 'package:di4l_pos/screens/location_screen/cubit/invoice_cubit.dart';
import 'package:di4l_pos/screens/main_screen/mobile/widgets/my_appbar.dart';
import 'package:di4l_pos/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class InvoiceSchemaDetailsScreen extends StatefulWidget {
  const InvoiceSchemaDetailsScreen({Key? key, this.addType, this.invoiceSchema})
      : super(key: key);
  final AddType? addType;
  final InvoiceSchema? invoiceSchema;

  static MultiBlocProvider provider(
      {AddType? addType, InvoiceSchema? invoiceSchema}) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InvoiceCubit(),
        ),
      ],
      child: InvoiceSchemaDetailsScreen(
        addType: addType,
        invoiceSchema: invoiceSchema,
      ),
    );
  }

  @override
  State<InvoiceSchemaDetailsScreen> createState() =>
      _InvoiceSchemaDetailsScreenState();
}

class _InvoiceSchemaDetailsScreenState
    extends State<InvoiceSchemaDetailsScreen> {
  ValueNotifier<String> preview = ValueNotifier('');
  Map<String, String> formatMap = {
    'XXXX': 'blank',
    '2023-XXXX': 'year',
  };
  String currentFormat = 'blank';
  List<int> totalDigitsList =
      List<int>.generate(7, (index) => index + 4, growable: false);
  int totalDigits = 4;

  final nameTxt = TextEditingController();
  final prefixTxt = TextEditingController();
  final startNumberTxt = TextEditingController();

  @override
  void initState() {
    super.initState();
    startNumberTxt.text = '0';
    if (widget.addType == AddType.UPDATE) {
      prefixTxt.text = widget.invoiceSchema!.prefix ?? '';
      nameTxt.text = widget.invoiceSchema!.name ?? '';
      startNumberTxt.text = widget.invoiceSchema!.startNumber != null
          ? widget.invoiceSchema!.startNumber.toString()
          : '';
      totalDigits = widget.invoiceSchema!.totalDigits ?? 4;
      currentFormat = widget.invoiceSchema!.schemeType ?? 'blank';
    }
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
        widget.addType == AddType.UPDATE ? 'update_schema'.tr : 'add_schema'.tr,
        style: GlobalStyles.titleHeader(context).copyWith(
          color: Colors.black,
        ),
      ),
      isShowBackButton: true,
      backgroundColor: GlobalColors.bgWebColor,
    );
  }

  ValueListenableBuilder<String> buildBody() {
    return ValueListenableBuilder<String>(
      valueListenable: preview,
      builder: (context, value, child) {
        preview.value = '';
        preview.value = preview.value + (prefixTxt.text);
        preview.value =
            preview.value + (currentFormat == 'year' ? '2023-' : '');
        if (totalDigits <= startNumberTxt.text.length) {
          preview.value = preview.value + (startNumberTxt.text);
        } else {
          String zerosStr = '';
          for (int i = 0; i < totalDigits - startNumberTxt.text.length; i++) {
            zerosStr += '0';
          }
          preview.value = preview.value + zerosStr + startNumberTxt.text;
        }
        preview.value = "#${preview.value}";
        return SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: '${'preview'.tr}: ',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: preview.value,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${'name'.tr}: ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: nameTxt,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${'format'.tr}: ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          items: formatMap.values
                              .map<DropdownMenuItem<String>>(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    formatMap.keys.firstWhere(
                                      (element) => formatMap[element] == e,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          value: currentFormat,
                          onChanged: (value) {
                            setState(() {
                              currentFormat = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${'prefix'.tr}: ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: prefixTxt,
                          onChanged: (value) {
                            preview.value = '';
                            preview.value = preview.value + (prefixTxt.text);
                            preview.value = preview.value +
                                (currentFormat == 'year' ? '2023-' : '');
                            if (totalDigits <= startNumberTxt.text.length) {
                              preview.value =
                                  preview.value + (startNumberTxt.text);
                            } else {
                              String zerosStr = '';
                              for (int i = 0;
                                  i < totalDigits - startNumberTxt.text.length;
                                  i++) {
                                zerosStr += '0';
                              }
                              preview.value = preview.value +
                                  zerosStr +
                                  startNumberTxt.text;
                            }
                            preview.value = "#${preview.value}";
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${'start_from'.tr}: ',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: startNumberTxt,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            preview.value = '';
                            preview.value = preview.value + (prefixTxt.text);
                            preview.value = preview.value +
                                (currentFormat == 'year' ? '2023-' : '');
                            if (totalDigits <= startNumberTxt.text.length) {
                              preview.value =
                                  preview.value + (startNumberTxt.text);
                            } else {
                              String zerosStr = '';
                              for (int i = 0;
                                  i < totalDigits - startNumberTxt.text.length;
                                  i++) {
                                zerosStr += '0';
                              }
                              preview.value = preview.value +
                                  zerosStr +
                                  startNumberTxt.text;
                            }
                            preview.value = "#${preview.value}";
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        '${'schema_digits_length'.tr}:',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<int>(
                          isExpanded: true,
                          items: totalDigitsList
                              .map<DropdownMenuItem<int>>(
                                (e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(
                                    e.toString(),
                                  ),
                                ),
                              )
                              .toList(),
                          value: totalDigits,
                          onChanged: (value) {
                            setState(() {
                              totalDigits = value!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(
                        50,
                      ),
                    ),
                    child: Text(
                      'save'.tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
