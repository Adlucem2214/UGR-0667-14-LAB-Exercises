import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';

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

abstract class PostEvent {}

class FetchPosts extends PostEvent {}

class EditPost extends PostEvent {
  final int postId;

  EditPost(this.postId);
}

class DeletePost extends PostEvent {
  final int postId;

  DeletePost(this.postId);
}

class PostState {}

class PostInitialState extends PostState {}

class PostLoadingState extends PostState {}

class PostLoadedState extends PostState {
  final List<Post> posts;

  PostLoadedState(this.posts);
}

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitialState()) {
    on<FetchPosts>((event, emit) async {
      emit(PostLoadingState());
      try {
        final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
        if (response.statusCode == 200) {
          final jsonData = jsonDecode(response.body) as List<dynamic>;
          final posts = jsonData.map((json) => Post.fromJson(json)).toList();
          emit(PostLoadedState(posts));
        } else {
          throw Exception('Failed to fetch posts');
        }
      } catch (e) {
        emit(PostInitialState());
      }
    });

    on<EditPost>((event, emit) {
      final currentState = state;
      if (currentState is PostLoadedState) {
        final posts = currentState.posts;
        final post = posts.firstWhere((post) => post.id == event.postId, orElse: () => Post(id: 0, title: '', body: ''));
        if (post.id != 0) {
          post.isEdited = true;
          emit(PostLoadedState(posts));
        }
      }
    });

    on<DeletePost>((event, emit) {
      final currentState = state;
      if (currentState is PostLoadedState) {
        final posts = currentState.posts;
        posts.removeWhere((post) => post.id == event.postId);
        emit(PostLoadedState(posts));
      }
    });
  }
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSONPlaceholder Demo Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => PostBloc()..add(FetchPosts()),
        child: const MyHomePage(title: 'JSONPlaceholder Demo Bloc'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          if (state is PostInitialState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is PostLoadedState) {
            final posts = state.posts;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
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
                      BlocProvider.of<PostBloc>(context).add(DeletePost(post.id));
                    },
                  ),
                  onLongPress: () {
                    BlocProvider.of<PostBloc>(context).add(EditPost(post.id));
                  },
                  leading: Checkbox(
                    value: post.isEdited,
                    onChanged: (value) {
                      BlocProvider.of<PostBloc>(context).add(EditPost(post.id));
                    },
                  ),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}