import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);
    return data.map((post) => Post(id: post['id'], title: post['title'], body: post['body'])).toList();
  } else {
    throw Exception('Failed to load posts');
  }
});

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts Data'),
        ),
        body: Consumer(builder: (context, ref, child) {
          final postsAsyncValue = ref.watch(postsProvider);
          return postsAsyncValue.when(
            data: (posts) {
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(posts[index].title),
                    subtitle: Text(posts[index].body),
                  );
                },
              );
            },
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stackTrace) => Text('Error: $error'),
          );
        }),
      ),
    );
  }
}
