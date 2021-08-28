import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:template_project/models/post.dart';
import 'package:template_project/models/postpagi_model.dart';
import 'package:template_project/provider/post_pagination_provider.dart';
import 'package:template_project/provider/post_provider.dart';

class PostPage extends StatefulWidget {
  static const id = "PostPage";

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {


  @override
  void initState() {
    fetchList();
    super.initState();

  }


  fetchList() async {
    await context.read<PostPaginationProvider>().fetchPost(onRefresh: true);
  }

  @override
  Widget build(BuildContext context) {

    RefreshController _refreshController =
        RefreshController(initialRefresh: false);

    void _onRefresh() async {
      context.read<PostPaginationProvider>().initValue();
      await context.read<PostPaginationProvider>().fetchPost(onRefresh: true);
      if (context.read<PostPaginationProvider>().statusCode==200) {
        _refreshController.refreshCompleted();
      } else {
        _refreshController.refreshFailed();
      }
    }

    void _onLoading() async {
      await context.read<PostPaginationProvider>().fetchPost(onRefresh: false);
      if (context.read<PostPaginationProvider>().statusCode==200) {
        _refreshController.loadComplete();
      } else {
        _refreshController.loadFailed();
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(tr('Post')),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white54,
        body: Consumer<PostPaginationProvider>(
          builder: (BuildContext context, PostPaginationProvider provider,
              Widget? child) {
            return provider.isProcessing?Center(child: CircularProgressIndicator(),): provider.isProcessing==false&&provider.statusCode!=200?Center(
              child: Text('Something went wrong',style: TextStyle(
                color: Colors.red,
              ),),
            ): SmartRefresher(
                enablePullDown: true,
                enablePullUp: true,
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    PostPagiModel model = provider.getPostByIndex(index);
                    return Container(
                      margin: EdgeInsets.only(
                          left: 5, right: 5, top: 10, bottom: 10),
                      child: ListTile(
                        title: Text(model.title),
                        trailing: Text(model.id.toString()),
                        subtitle: Text(model.body),
                      ),
                    );
                  },
                  itemCount: provider.mList.length,
                ));
          },
        ));
  }
}
