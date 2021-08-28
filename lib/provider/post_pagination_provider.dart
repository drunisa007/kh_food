import 'package:flutter/foundation.dart';
import 'package:template_project/helpers/httpresponse.dart';
import 'package:template_project/helpers/postpagi.dart';
import 'package:template_project/models/postpagi_model.dart';

class PostPaginationProvider extends ChangeNotifier {
  bool _isProcessing = true;

  bool get isProcessing => _isProcessing;

  int _page = 1;

  int get currentPage => _page;

  List<PostPagiModel> _mList = [];

  List<PostPagiModel> get mList => _mList;

  int _statusCode = 200;

  get statusCode => _statusCode;




  void initValue(){
    _isProcessing = true;
    _page=1;
    _mList=[];
    _statusCode= 200;
    notifyListeners();
  }

  void mergePost(List<PostPagiModel> mNewList) {
    _mList.addAll(mNewList);
    notifyListeners();
  }

  void newPost(List<PostPagiModel> mNewList) {
    _mList = mNewList;
    notifyListeners();
  }

  PostPagiModel getPostByIndex(int index) {
    return _mList[index];
  }

  Future<void> fetchPost({onRefresh = true}) async {

    var currentResponse = await PostPagination().getPost(page: currentPage);
    if (currentResponse.isSuccessful) {
      if (onRefresh) {
        newPost(currentResponse.data);
      } else {
        mergePost(currentResponse.data);
      }
      _page++;
      _isProcessing = false;
      _statusCode = 200;
      notifyListeners();
    }
    else {
      _page = 1;
      _statusCode = 400;
      _isProcessing = false;
      notifyListeners();
    }

  }
}
