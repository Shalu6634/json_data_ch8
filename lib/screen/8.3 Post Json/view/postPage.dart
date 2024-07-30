import 'package:flutter/material.dart';
import 'package:json_data_ch8/screen/8.3%20Post%20Json/provider/post_provider.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          toolbarHeight: 70,
          centerTitle: true,
          backgroundColor: Colors.blue.shade700,
          title: const Text(
            'JSON Parsing',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(
              width * 0.02, height * 0.016, width * 0.02, height * 0.014),
          child: ListView.builder(
            itemCount: postProvider.postModal.posts.length,
            itemBuilder: (context, index) => Padding(
              padding:  EdgeInsets.only(bottom: 5),
              child: Card(

                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 2),
                      Text(
                          postProvider.postModal.posts[index].title),
                      const SizedBox(height: 2),

                      const SizedBox(height: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'likes : ${postProvider.postModal.posts[index].reactions.likes.toString()}  '),
                          Text(
                              'dislikes : ${postProvider.postModal.posts[index].reactions.dislikes.toString()}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
