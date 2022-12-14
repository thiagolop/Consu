import 'package:dio/dio.dart';
import 'package:flutter_application_2/service/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio();
  }
}
