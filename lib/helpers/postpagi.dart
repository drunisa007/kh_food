import 'dart:io';

import 'package:template_project/helpers/httpresponse.dart';
import 'package:template_project/models/postpagi_model.dart';

import 'package:http/http.dart' as http;

class PostPagination{
  
  
  
  Future<HttpResponse<List<PostPagiModel>>> getPost({limit=10,page=1}) async {
    try {
      var uriLink = Uri.parse(
          "https://jsonplaceholder.typicode.com/posts?_limit=$limit&_page=$page");

      List<PostPagiModel> mListData;

      var response = await http.get(uriLink);

      if (response.statusCode == 200) {
        mListData = postPagiModelFromJson(response.body);
        return HttpResponse(
            true, mListData, message: "success", responseCode: 200);
      }
      else {
        return HttpResponse(
            false, [], message: "something went wrong", responseCode: 400);
      }
    }

    on FormatException catch(_){
      return HttpResponse(false, [], message: "format exception occur", responseCode: 400);
    }
    on SocketException catch(_){
      return HttpResponse(false, [], message: "socket exception occur", responseCode: 400);
    }

    catch(e){
      return HttpResponse(false, [], message: e.toString(), responseCode: 500);
    }
  }
  
}