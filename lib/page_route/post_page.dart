import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/models/post.dart';
import 'package:template_project/provider/post_provider.dart';

class PostPage extends StatelessWidget {
  static const id = "PostPage";

  @override
  Widget build(BuildContext context) {
    context.read<PostProvider>().fetchPost();

    return Scaffold(
      appBar: AppBar(
        title: Text(tr('Post')),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){
            context.read<PostProvider>().initValue();
            context.read<PostProvider>().fetchPost();

          }, icon:Icon(Icons.refresh))
        ],
      ),
      backgroundColor: Colors.white54,
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<PostProvider>().fetchPost();
        },
        child: Consumer<PostProvider>(
            builder: (BuildContext context, postProvider, Widget? child) {
          return postProvider.isProcessing && postProvider.errorMessage == ''
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : postProvider.responseCode != 200
                  ? Center(
                      child: Text(postProvider.errorMessage),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        Post post = postProvider.getPost(index);
                        return ListTile(
                          title: Text(post.title),
                        );
                      },
                      itemCount: postProvider.postList.length,
                    );
        }),
      ),
    );
  }
}
