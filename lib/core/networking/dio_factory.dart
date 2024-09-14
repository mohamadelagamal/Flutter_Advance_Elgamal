
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory{

  DioFactory._(); //this use to make the class constructor private so no one can create an object from it
  static Dio? dio;

  static Future<Dio> getDio()async{
    Duration timeout =const Duration(seconds: 30); //this use to set the timeout for the request

    if(dio ==null){
      dio = Dio(); //this use to create the dio object
      dio!
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;
      addDioInterceptors();
      return dio!;

    }else{
      return dio!;
    }
  }
  // this use to add the interceptors to the dio object
  static void addDioInterceptors(){
   dio?.interceptors.add(
     // this use to log the request and response of the API
     PrettyDioLogger(
       requestBody: true,
        requestHeader: true,
       responseHeader: true,
     )
   );
  }
}