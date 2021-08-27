import 'package:flutter/foundation.dart';
import 'package:template_project/helpers/apihelper.dart';
import 'package:template_project/models/post.dart';

class PostProvider extends ChangeNotifier{

    bool _isProcessing = true;

    get isProcessing => _isProcessing;

    List<Post> _postList = [];

    get postList => _postList;

    int _responseCode=0;

    get responseCode => _responseCode;

    String _errorMessage = '';

    get errorMessage => _errorMessage;


    Future<void> fetchPost()  async {

      var response = await ApiHelper().getDropboxPost();


      if(response.isSuccessful){

        _postList = response.data;
        _responseCode= response.responseCode;
        _isProcessing = false;
        _errorMessage = '';
      }
      else{
        _responseCode = response.responseCode;
        _isProcessing = false;
        _errorMessage = response.message;
        _postList =[];
      }

      notifyListeners();
    }

    void initValue(){
      _isProcessing = true;
      _postList = [];
      _responseCode= 0;
      _errorMessage = '';
      notifyListeners();
    }


    Post getPost(int index){
      return _postList[index];
    }
}