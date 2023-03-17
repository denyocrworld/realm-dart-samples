import 'package:realm/realm.dart';

part 'message.g.dart';

@RealmModel()
class _Message {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  bool isComplete = false;
  late String summary;
  @MapTo('owner_id')
  late String ownerId;
  @MapTo('message')
  late String message;
}
