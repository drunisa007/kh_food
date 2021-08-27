import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:template_project/helpers/httpresponse.dart';
import 'package:template_project/models/post.dart';

class ApiHelper{
   Future<HttpResponse<List<Post>>> getPosts({int limit = 20,int page = 1}) async {

     var link = Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=$limit&_page=$page');
     try{
       var  response = await http.get(link);

       if(response.statusCode==200){

         var body = jsonDecode(response.body);

         List<Post> postsList = [];

         body.forEach((e){
           Post post = Post.fromJson(e);
           postsList.add(post);
         });
         return HttpResponse(true, postsList,message: "Successfully Requested",responseCode: 200);

       }
       else{
         return HttpResponse(false, [],message: "Invalid Reponse Received from server",responseCode: response.statusCode);

       }
     }
     on SocketException{
       return HttpResponse(false, [],message: "Problem with your internet connection",responseCode: 400);
     }
     on FormatException{
       return HttpResponse(false, [],message: "Problem with your internet connection",responseCode: 500);

     }
     catch(e){
      return HttpResponse(false, [],message: "something went wrong",responseCode: 404);
     }
   }


   Future<HttpResponse<List<Post>>> getDropboxPost() async {

     var url = "https://dl.dropboxusercontent.com/s/ohhxfnqsoa5q8j0/postdata.json?dl=0";

     try{
       List<Post> mPostList=[];
       var response =await http.get(Uri.parse(url));

       if(response.statusCode==200){
         var body = jsonDecode(response.body);
         body.forEach((e){
           Post mPost = Post.fromJson(e);
           mPostList.add(mPost);
         });
         return HttpResponse(true, mPostList, message: "success", responseCode: 200);

       }
       else{
         return HttpResponse(false, [], message: "Something went wrong", responseCode: response.statusCode);
       }

     }
     on SocketException catch(e){
       return HttpResponse(false, [], message: "Problem With the Internet", responseCode: 404);
     }
     on FormatException catch(e){
       return HttpResponse(false, [], message: "Format Worng on Server", responseCode: 400);
     }
     catch(e){
      return HttpResponse(false, [], message: e.toString(), responseCode: 500) ;
     }
   }

}