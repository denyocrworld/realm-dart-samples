import 'package:realm/realm.dart';
import 'package:realm_chat/core.dart';

class MessageService {
  static late Realm realm;
  static MessageService? _instance;
  static MessageService get instance {
    _instance ??= MessageService();
    return _instance!;
  }

  MessageService() {
    realm = Realm(Configuration.flexibleSync(AuthService.currentUser!, [
      Message.schema,
    ]));
    if (realm.subscriptions.isEmpty) {
      subscription() async {
        String queryAllName = "${this}Subscription";
        realm.subscriptions.update((mutableSubscriptions) {
          mutableSubscriptions.add(realm.all<Message>(), name: queryAllName);
        });
        await realm.subscriptions.waitForSynchronization();
      }

      subscription();
    }
  }

  Stream<RealmResultsChanges<Message>> snapshot() {
    return MessageService.realm
        .query<Message>("TRUEPREDICATE SORT(_id ASC)")
        .changes;
  }

  add() async {
    var newItem = Message(
      ObjectId(),
      "Hello",
      "Deny",
      "Hello",
    );
    realm.write(() {
      realm.add(newItem);
    });
  }

  delete(Message item) {
    realm.write(() => realm.delete(item));
  }

  Future<void> update(Message item, {String? summary, bool? isComplete}) async {
    realm.write(() {
      item.message = "GARFIT";
    });
  }
}
