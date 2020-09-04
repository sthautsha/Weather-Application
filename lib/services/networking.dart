import 'package:http/http.dart' as http; // we can use anythin avalaible in http packge by word http.
import 'dart:convert';

class NetworkHelper{
  NetworkHelper(this.url);
  final String url;

  Future getData() async{
    http.Response response = await http.get(url);// comes from hhttp package
    if(response.statusCode == 200){// checking staus code for the respose
      String data = response.body;
      //keeping variable dynamic
      // decode data once
      return jsonDecode(data);
  }
  else{
      print(response.statusCode);
    }

  }
}