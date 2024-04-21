import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';

class Post {
  final int id;
  final String title;
  final String body;
  bool isEdited;

  Post({required this.id, required this.title, required this.body, this.isEdited = false});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class PostProvider extends ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List<dynamic>;
      _posts = jsonData.map((json) => Post.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to fetch posts');
    }
  }

  void editPost(int postId) {
    final post = _posts.firstWhere((post) => post.id == postId, orElse: () => Post(id: 0, title: '', body: ''));
    // ignore: unnecessary_null_comparison
    if (post != null) {
      post.isEdited = true;
      notifyListeners();
    }
  }

  void deletePost(int postId) {
    _posts.removeWhere((post) => post.id == postId);
    notifyListeners();
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostProvider(),
      child: MaterialApp(
        title: 'JSONPlaceholder Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'JSONPlaceholder Demo'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostProvider>(context, listen: false).fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    final postProvider = Provider.of<PostProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: postProvider.posts.isNotEmpty
          ? ListView.builder(
              itemCount: postProvider.posts.length,
              itemBuilder: (context, index) {
                final post = postProvider.posts[index];
                return ListTile(
                  title: Text(
                    post.title,
                    style: TextStyle(
                      decoration: post.isEdited ? TextDecoration.lineThrough : TextDecoration.none,
                    ),
                  ),
                  subtitle: Text(post.body),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      postProvider.deletePost(post.id);
                    },
                  ),
                  onLongPress: () {
                    postProvider.editPost(post.id);
                  },
                  leading: Checkbox(
                    value: post.isEdited,
                    onChanged: (value) {
                      setState(() {
                        post.isEdited = value ?? false;
                      });
                    },
                  ),
                );
              },
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}