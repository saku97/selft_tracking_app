import 'package:equatable/equatable.dart';

class Location extends Equatable {
  double longitude;
  double latitude;
  String address;
  DateTime date, from, to;

  Location({
    this.longitude,
    this.latitude,
    this.address,
    this.date,
    this.from,
    this.to,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
        latitude: json["latitude"],
        longitude: json["longitude"],
        address: json['address'],
        date: json['date'],
        from: json['from'],
        to: json['to']);
  }

  factory Location.fromBackgroundJson(Map<String, dynamic> json) {
    return Location(
        latitude: json["latitude"],
        longitude: json["longitude"],
        address: json['address'],
        date: DateTime.fromMillisecondsSinceEpoch(json['recordedAt']),
        from: json['from'],
        to: json['to']);
  }

  @override
  // TODO: implement props
  List<Object> get props => [date];
}
