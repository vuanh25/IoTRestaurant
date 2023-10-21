// ignore_for_file: unnecessary_this, prefer_typing_uninitialized_variables, annotate_overrides, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:di4l_pos/common/dimensions.dart';
import 'package:di4l_pos/common/global_colors.dart';
import 'package:di4l_pos/screens/contacts_screen/sub_screens/detail_screen/notes_screen/models/note.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotesItemWidget extends StatefulWidget {
  final Note note;
  final onDeleteItem;
  final onUpdateItem;
  const NotesItemWidget(
      {Key? key,
      required this.note,
      required this.onDeleteItem,
      required this.onUpdateItem})
      : super(key: key);

  @override
  State<NotesItemWidget> createState() => _NotesItemWidgetState();
}

class _NotesItemWidgetState extends State<NotesItemWidget>
    with AfterLayoutMixin {
  //Note note;
  final TextEditingController _txtNote = TextEditingController();
  final TextEditingController _txtCreatedAt = TextEditingController();

  FutureOr<void> afterFirstLayout(BuildContext context) {
    this._txtNote.text = widget.note.note ?? '';
    this._txtCreatedAt.text =
        DateFormat("dd/MM/yy HH:mm").format(widget.note.createdAt as DateTime);
  }

  void clearText() {
    _txtNote.clear();
  }

  String _getDate(DateTime? time) {
    if (time == null) return '';
    return DateFormat("dd/MM/yy").format(time);
  }

  String _getTime(DateTime? time) {
    if (time == null) return '';
    return DateFormat("HH:mm").format(time);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(10))),
              context: context,
              builder: (context) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(children: [
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          child: const Center(
                              child: Text(
                            "Chi tiết ghi chú",
                            style:
                                TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
                          ) // Your desired title
                              ),
                        ),
                        Positioned(
                            right: 0.0,
                            top: 0.0,
                            child: IconButton(
                                icon: const Icon(Icons.clear), // Your desired icon
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }))
                      ]),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Ngày tạo'),
                              TextFormField(
                                controller: _txtCreatedAt,
                                enabled: false,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text('Chi tiết:'),
                              TextFormField(
                                maxLines: null,
                                controller: _txtNote,
                                enabled: false,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          backgroundColor: Colors.white,
                                          side: const BorderSide(),
                                          fixedSize: const Size(160, 45)),
                                      onPressed: () {
                                        widget.onDeleteItem(widget.note.id);
                                      },
                                      icon: const Icon(Icons.delete_outlined),
                                      label: const Text(
                                        'Xóa',
                                        style: TextStyle(
                                            fontSize:
                                                Dimensions.FONT_SIZE_LARGE),
                                      )),
                                  ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                          side: const BorderSide(
                                              color: GlobalColors.primaryColor),
                                          backgroundColor:
                                              GlobalColors.primaryColor,
                                          fixedSize: const Size(160, 45)),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                        top: Radius.circular(
                                                            10))),
                                            context: context,
                                            builder: (context) {
                                              return Container(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          const Text('Tạo ghi chú',
                                                              style: TextStyle(
                                                                fontSize: Dimensions
                                                                    .FONT_SIZE_LARGE,
                                                              )),
                                                          const SizedBox(
                                                            width: 100,
                                                          ),
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              icon: const Icon(
                                                                  Icons.clear))
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 10,
                                                                vertical: 10),
                                                        child: Column(
                                                          children: [
                                                            TextFormField(
                                                              controller:
                                                                  _txtNote,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .multiline,
                                                              maxLines: null,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Ghi chú đơn đặt trước',
                                                                suffixIcon:
                                                                    IconButton(
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .clear),
                                                                  onPressed:
                                                                      clearText,
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 15,
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                ElevatedButton(
                                                                    style: ElevatedButton.styleFrom(
                                                                        foregroundColor: Colors
                                                                            .black,
                                                                        backgroundColor:
                                                                            Colors
                                                                                .white,
                                                                        side:
                                                                            const BorderSide(),
                                                                        fixedSize: const Size(
                                                                            160,
                                                                            45)),
                                                                    onPressed:
                                                                        () {
                                                                      Navigator.of(
                                                                              context)
                                                                          .pop();
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
                                                                            color: GlobalColors
                                                                                .primaryColor),
                                                                        backgroundColor:
                                                                            GlobalColors
                                                                                .primaryColor,
                                                                        fixedSize: const Size(
                                                                            160,
                                                                            45)),
                                                                    onPressed:
                                                                        () {
                                                                      widget.onUpdateItem(
                                                                          _txtNote
                                                                              .text);
                                                                    },
                                                                    child: const Text(
                                                                      'Cập nhật',
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
                                      icon: const Icon(Icons.edit),
                                      label: const Text(
                                        'Chỉnh sửa',
                                        style: TextStyle(
                                            fontSize:
                                                Dimensions.FONT_SIZE_LARGE),
                                      ))
                                ],
                              ),
                            ]),
                      )
                    ],
                  ));
        },
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _getDate(widget.note.createdAt!),
                  style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                ),
                Text(
                  _getTime(widget.note.createdAt!),
                  style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
                )
              ],
            ),
            Container(
              height: 50,
              width: 1,
              color: Colors.grey.withOpacity(0.5),
            ),
            Container(
              width: MediaQuery.of(context).size.width * .65,
              margin: const EdgeInsets.symmetric(vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                widget.note.note!,
                style: const TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// class NotesItemWidget extends StatelessWidget {
//   final Note note;
//   const NotesItemWidget({Key? key, required this.note}) : super(key: key);

//   String _getDate(DateTime time) {
//     if (time == null) return '';
//     return DateFormat("dd/MM/yy").format(time);
//   }

//   String _getTime(DateTime time) {
//     if (time == null) return '';
//     return DateFormat("HH:mm").format(time);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListTile(
//         onTap: () {
//           showModalBottomSheet(
//               shape: RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(10))),
//               context: context,
//               builder: (context) => Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Stack(children: [
//                         Container(
//                           width: double.infinity,
//                           height: 50.0,
//                           child: Center(
//                               child: Text(
//                             "Chi tiết ghi chú",
//                             style:
//                                 TextStyle(fontSize: Dimensions.FONT_SIZE_LARGE),
//                           ) // Your desired title
//                               ),
//                         ),
//                         Positioned(
//                             right: 0.0,
//                             top: 0.0,
//                             child: IconButton(
//                                 icon: Icon(Icons.clear), // Your desired icon
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 }))
//                       ]),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//                         child: Column(children: [
//                           TextFormField(
                            
//                             enabled: false,
//                           ),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           TextFormField(
//                             enabled: false,
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               ElevatedButton.icon(
//                                   style: ElevatedButton.styleFrom(
//                                       side: BorderSide(),
//                                       primary: Colors.white,
//                                       onPrimary: Colors.black,
//                                       fixedSize: Size(160, 45)),
//                                   onPressed: () {},
//                                   icon: Icon(Icons.delete_outlined),
//                                   label: Text(
//                                     'Xóa',
//                                     style: TextStyle(
//                                         fontSize: Dimensions.FONT_SIZE_LARGE),
//                                   )),
//                               ElevatedButton.icon(
//                                   style: ElevatedButton.styleFrom(
//                                       side: BorderSide(
//                                           color: GlobalColors.primaryColor),
//                                       primary: GlobalColors.primaryColor,
//                                       fixedSize: Size(160, 45)),
//                                   onPressed: () {},
//                                   icon: Icon(Icons.edit),
//                                   label: Text(
//                                     'Chỉnh sửa',
//                                     style: TextStyle(
//                                         fontSize: Dimensions.FONT_SIZE_LARGE),
//                                   ))
//                             ],
//                           ),
//                         ]),
//                       )
//                     ],
//                   ));
//         },
//         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         tileColor: Colors.white,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   _getDate(note.createdAt!),
//                   style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
//                 ),
//                 Text(
//                   _getTime(note.createdAt!),
//                   style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
//                 )
//               ],
//             ),
//             Container(
//               height: 50,
//               width: 1,
//               color: Colors.grey.withOpacity(0.5),
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width * .65,
//               margin: const EdgeInsets.symmetric(vertical: 5),
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//               decoration: BoxDecoration(
//                 color: Colors.grey.withOpacity(0.2),
//                 borderRadius: BorderRadius.circular(5),
//               ),
//               child: Text(
//                 note.note!,
//                 style: TextStyle(fontSize: Dimensions.FONT_SIZE_SMALL),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
