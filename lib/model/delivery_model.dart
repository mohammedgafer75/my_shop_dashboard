import 'package:cloud_firestore/cloud_firestore.dart';

class Delivery {
  String? id;
  String? name;
  String? desc;
  String? location;

  Delivery({this.id, this.name, this.desc, this.location});

  Delivery.fromMap(DocumentSnapshot data) {
    id = data.id;
    name = data["name"];
    desc = data["desc"];
    location = data["location"];
  }
}
