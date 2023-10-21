import 'dart:convert';

class AddPrinterRequest {
  String? name;
  String? connectionType;
  String? capabilityProfile;
  String? charPerLine;
  String? ipAddress;
  String? port;
  String? path;

  AddPrinterRequest({
    this.name,
    this.connectionType,
    this.capabilityProfile,
    this.charPerLine,
    this.ipAddress,
    this.port,
    this.path,
  });

  factory AddPrinterRequest.fromRawJson(String str) =>
      AddPrinterRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddPrinterRequest.fromJson(Map<String, dynamic> json) =>
      AddPrinterRequest(
        name: json['name'],
        connectionType: json['connection_type'],
        capabilityProfile: json['capability_profile'],
        charPerLine: json['char_per_line'],
        ipAddress: json['ip_address'],
        port: json['port'],
        path: json['path'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'connection_type': connectionType,
        'capability_profile': capabilityProfile,
        'char_per_line': charPerLine,
        'ip_address': ipAddress,
        'port': port,
        'path': path,
      };
}
