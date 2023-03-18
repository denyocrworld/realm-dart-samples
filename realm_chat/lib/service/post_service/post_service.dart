import 'package:faker_dart/faker_dart.dart';
import 'package:realm/realm.dart';
import 'package:realm_chat/core.dart';

class PostService {
  static late Realm realm;
  static PostService? _instance;
  static PostService get instance {
    _instance ??= PostService();
    return _instance!;
  }

  PostService() {
    realm = Realm(Configuration.flexibleSync(AuthService.currentUser!, [
      Post.schema,
    ]));
  }

  syncronize() async {
    print("- $syncronize");
    if (realm.subscriptions.isNotEmpty) return;
    String queryAllName = "${this}Subscription";
    print("$queryAllName is created!");
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.add(realm.all<Post>(), name: queryAllName);
    });
    await realm.subscriptions.waitForSynchronization();
  }

  Stream<RealmResultsChanges<Post>> snapshot() {
    return PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)").changes;
  }

  add({
    required String title,
    required String content,
    required String category,
  }) async {
    var newItem = Post(
      ObjectId(),
      title,
      content,
      category,
    );
    realm.write(() {
      realm.add(newItem);
    });
  }

  delete(Post item) {
    realm.write(() async {
      realm.delete(item);
    });
  }

  Future<void> update(Post item, {String? summary, bool? isComplete}) async {
    realm.write(() {
      item.title = Faker.instance.commerce.productName();
    });
  }
}
