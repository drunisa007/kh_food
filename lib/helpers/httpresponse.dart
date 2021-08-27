class HttpResponse<T>{

  late bool isSuccessful;
  late T data;
  late  String message;
  late  int responseCode;

  HttpResponse(this.isSuccessful,this.data,{required this.message,required this.responseCode});


}