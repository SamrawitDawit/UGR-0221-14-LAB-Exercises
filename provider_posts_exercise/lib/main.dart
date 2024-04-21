

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => PostsProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postsProvider = Provider.of<PostsProvider>(context);
    return MaterialApp(
      title: 'Posts Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Visibility(
              visible: postsProvider.posts.isEmpty,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  postsProvider.fetchPosts();
                },
                child: Text('Fetch', style: TextStyle(color: Colors.black),),
              ),
            ),
            Expanded(
              child: PostListScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class PostsProvider with ChangeNotifier {
  List<dynamic> _posts = [];

  List<dynamic> get posts => _posts;

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      _posts = json.decode(response.body);
      notifyListeners();
    } else {
      throw Exception('Failed to fetch posts');
    }
  }
}

class PostListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<PostsProvider>(
        builder: (context, postsProvider, _) {

            return ListView.builder(
              itemCount: postsProvider.posts.length,
              itemBuilder: (context, index) {
                final post = postsProvider.posts[index];
                return ListTile(
                  title: Text(post['title']),
                  subtitle: Text(post['body']),
                );
              },
            );
          }
    );
  }
}