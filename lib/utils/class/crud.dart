import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart ' as http;
import 'package:teckno_soft/utils/class/statusrequest.dart';
import 'package:teckno_soft/utils/functions/ckeckInternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    try {
      if (await checkTheInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          var responsebody = jsonDecode(response.body);
          print(responsebody);
          return Right(responsebody);

        } else {

          return const Left(StatusRequest.serverfailure);
          
        }   
      } else {
        return const Left(StatusRequest.offline);
      }
    } catch (_) {
      print("problem here >>>>>in php or mysql   ");
      return const Left(StatusRequest.failure);
    }
  }

}
