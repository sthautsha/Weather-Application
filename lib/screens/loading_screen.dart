import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;
  
  @override
  void initState(){
    super.initState();
    getLocationData();  
    
  }
 
 //by asynchrounuos programming we can get  time consuming tasks happen in the background instaed of happpening in the foreground
  void getLocationData() async{
    //WeatherModel weatherModel = WeatherModel();
    var weatherData = await WeatherModel().getlocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherData,
        );
    }));
      // print(temperature);
      // print(condition);
      // print(cityName);
    
  }
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      body: Center(
        child:SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,

        ),
      ),
    );

    
      
  }
}
