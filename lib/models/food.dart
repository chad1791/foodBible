import 'package:flutter/foundation.dart';

class Food {
  final String id;
  final String name;
  final String category;
  final String image;
  final String tag;
  final String creatorId;

  Food({
    @required this.id,
    @required this.name,
    @required this.category,
    @required this.image,
    @required this.tag,
    @required this.creatorId,
  });
}
