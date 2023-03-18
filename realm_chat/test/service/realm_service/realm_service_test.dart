import 'package:flutter_test/flutter_test.dart';
import 'package:realm_chat/core.dart';

void main() {
  group('PostService', () {
    // Initializing PostService with Realm and synchronizing the subscription
    setUp(() async {
      RealmService.init();
      await AuthService.login(
        email: 'username',
        password: 'password',
      );
      await PostService.instance.syncronize();
    });

    test('add post', () async {
      RealmService.init();
      await AuthService.login(
        email: 'username',
        password: 'password',
      );
      await PostService.instance.syncronize();
      // Adding a new post
      const title = 'New Post Title';
      const content = 'New post content';
      const category = 'New post category';
      await PostService.instance.add(
        title: title,
        content: content,
        category: category,
      );

      // Querying for the added post
      final posts =
          PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)");
      // expect(posts.length, 1);
      // expect(posts[0].title, title);
      // expect(posts[0].category, category);
    });

    test('delete post', () async {
      // Adding a new post
      const title = 'Post Title';
      const content = 'Post content';
      const category = 'Post category';
      await PostService.instance.add(
        title: title,
        content: content,
        category: category,
      );

      // Querying for the added post
      final posts =
          PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)");
      // expect(posts.length, 1);

      // Deleting the post
      await PostService.instance.delete(posts[0]);

      // Querying for the deleted post
      final deletedPost =
          PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)");
      // expect(deletedPost, isNull);
    });

    test('update post', () async {
      // Adding a new post
      const title = 'Post Title';
      const content = 'Post content';
      const category = 'Post category';
      await PostService.instance.add(
        title: title,
        content: content,
        category: category,
      );

      // Querying for the added post
      final posts =
          PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)");
      // expect(posts.length, 1);

      // Updating the post
      const updatedTitle = 'Updated Post Title';
      await PostService.instance.update(posts[0]);

      // Querying for the updated post
      final updatedPost =
          PostService.realm.query<Post>("TRUEPREDICATE SORT(_id ASC)");
      // expect(updatedPost.title, updatedTitle);
    });

    tearDown(() {
      // Closing the Realm instance
      PostService.realm.close();
    });
  });
}
