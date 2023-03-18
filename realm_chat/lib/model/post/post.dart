import 'package:realm/realm.dart';

part 'post.g.dart';

@RealmModel()
class _Post {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('title')
  late String title;
  @MapTo('content')
  late String message;
  @MapTo('category')
  late String category;
}
