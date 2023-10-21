// class Note {
//   Note({
//     this.note,
//   });

//   String? note;

//   Note copyWith({
//     String? note,
//   }) =>
//       Note(note: note ?? this.note);

//   factory Note.fromRawJson(String str) => Note.fromJson(json.decode(str));

//   String toRawJson() => json.encode(toJson());

//   factory Note.fromJson(Map<String, dynamic> json) =>
//       Note(note: json["note"] == null ? null : json["note"]);

//   Map<String, dynamic> toJson() => {"note": note == null ? null : note};
// }

class Note {
  int? id;
  String? note;
  DateTime? createdAt;

  Note({this.id, this.note}) : createdAt = DateTime.now();
  static List<Note> noteList() {
    return [];
  }
}
