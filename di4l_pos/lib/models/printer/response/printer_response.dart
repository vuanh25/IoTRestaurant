class Printer {
  String? name;
  String? connectionType;
  String? capabilityProfile;
  String? charPerLine;
  String? ipAddress;
  String? port;
  String? path;
  int? id;

  Printer({
    this.name,
    this.connectionType,
    this.capabilityProfile,
    this.charPerLine,
    this.ipAddress,
    this.port,
    this.path,
    this.id,
  });

  factory Printer.fromJson(Map<String, dynamic> json) => Printer(
        name: json['name'],
        connectionType: json['connection_type'],
        capabilityProfile: json['capability_profile'],
        charPerLine: json['char_per_line'],
        ipAddress: json['ip_address'],
        port: json['port'],
        path: json['path'],
        id: json['id'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'connection_type': connectionType,
        'capability_profile': capabilityProfile,
        'char_per_line': charPerLine,
        'ip_address': ipAddress,
        'port': port,
        'path': path,
        'id': id
      };
}
