import 'package:pets_app/models/category.dart';

class Groups {
  final String groupName;
  final String thumbnail;
  final String location;
  final int members;
  final String organizedBy;
  final Category categoryName;

  Groups({
    required this.groupName,
    required this.thumbnail,
    required this.location,
    required this.members,
    required this.organizedBy,
    required this.categoryName,
  });
}
