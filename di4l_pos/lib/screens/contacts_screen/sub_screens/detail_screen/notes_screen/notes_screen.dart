// ignore_for_file: avoid_unnecessary_containers, unnecessary_new

import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/common/global_images.dart';
import 'package:di4l_pos/screens/contacts_screen/widgets/note_widget.dart';
import 'package:di4l_pos/widgets/custom_button/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'models/note.dart';

class NotesCustomer extends StatefulWidget {
  const NotesCustomer({Key? key}) : super(key: key);

  @override
  State<NotesCustomer> createState() => _NotesCustomerState();
}

class _NotesCustomerState extends State<NotesCustomer> {
  final noteList = Note.noteList();
  final TextEditingController _txtNote = TextEditingController(text: '');

  void clearText() {
    _txtNote.clear();
  }

  void _addNoteItem(String note) {
    setState(() {
      noteList
          .add(Note(id: new DateTime.now().millisecondsSinceEpoch, note: note));
    });
    _txtNote.clear();
  }

  void _deleteNoteItem(int id) {
    setState(() {
      noteList.removeWhere((item) => item.id == id);
    });
  }

  @override
  void dispose() {
    _txtNote.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return _buildNoteEmpty(context);
    return noteList.isNotEmpty ? _buildNotes() : _buildNoteEmpty(context);
  }

  Container _buildNoteEmpty(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          GlobalImages.notes,
          width: MediaQuery.of(context).size.width / 2,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Bạn chưa có ghi chú nào!',
          style: TextStyle(color: GlobalColors.kGreyTextColor),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: GlobalColors.primaryColor),
                backgroundColor: GlobalColors.primaryColor,
                fixedSize: const Size(200, 50)),
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10))),
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text('Tạo ghi chú',
                                style: TextStyle(
                                  fontSize: Dimensions.FONT_SIZE_LARGE,
                                )),
                            const SizedBox(
                              width: 100,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                icon: const Icon(Icons.clear))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _txtNote,
                                keyboardType: TextInputType.multiline,
                                maxLines: null,
                                decoration: InputDecoration(
                                  hintText: 'Ghi chú đơn đặt trước',
                                  suffixIcon: IconButton(
                                    icon: const Icon(Icons.clear),
                                    onPressed: clearText,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          backgroundColor: Colors.white,
                                          side: const BorderSide(),
                                          fixedSize: const Size(160, 45)),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        'Quay lại',
                                        style: TextStyle(
                                            fontSize:
                                                Dimensions.FONT_SIZE_LARGE),
                                      )),
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          side: const BorderSide(
                                              color: GlobalColors.primaryColor),
                                          backgroundColor:
                                              GlobalColors.primaryColor,
                                          fixedSize: const Size(160, 45)),
                                      onPressed: () {
                                        _addNoteItem(_txtNote.text);
                                      },
                                      child: const Text(
                                        'Tạo mới',
                                        style: TextStyle(
                                            fontSize:
                                                Dimensions.FONT_SIZE_LARGE),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                    );
                  });
            },
            child: const Text(
              'Tạo ghi chú',
              style: TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
            ))
      ]),
    );
  }

  SingleChildScrollView _buildNotes() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          /// Account Summary
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Nhập ghi chú',
                    style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: _txtNote,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: 'Ghi chú đơn đặt trước',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: clearText,
                      ),
                    ),
                  ),
                  const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
                  CustomButton(
                    type: ButtonType.BUTTON_TEXT_CUSTOM,
                    label: 'Tạo ghi chú mới'.tr,
                    // borderColor: GlobalColors.primaryColor,
                    // color: GlobalColors.primaryColor,
                    onPressed: () {
                      _addNoteItem(_txtNote.text);
                    },
                  ),
                ],
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              'Lịch sử ghi chú',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Ngày',
                    style: TextStyle(
                        color: GlobalColors.kGreyTextColor, fontSize: 13),
                  ),
                  Text(
                    'Chi tiết ghi chú',
                    style: TextStyle(
                        color: GlobalColors.kGreyTextColor, fontSize: 13),
                  )
                ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListView(
              reverse: true,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                for (Note note in noteList)
                  NotesItemWidget(
                    note: note,
                    onDeleteItem: _deleteNoteItem,
                    onUpdateItem: _addNoteItem,
                  )
              ],
              // itemCount: 10,
              // itemBuilder: (context, index) => Container(
              //   child: Text('data'),
              // ),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              //     CardNote(),
              // ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardNote extends StatelessWidget {
  const CardNote({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [Text('30/10/00'), Text('8:00')],
        ),
        Container(
          height: 50,
          width: 1,
          color: Colors.grey.withOpacity(0.5),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 120,
          margin: const EdgeInsets.symmetric(vertical: 5),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text('jjjjjjjjjjjjjjj'),
        )
      ],
    );
  }
}
