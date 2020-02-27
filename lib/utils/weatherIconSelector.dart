String getWeatherIcon(String weatherType){
  if(weatherType.contains("Sun")){
    return "lib/assets/sun.png";
  }else{
    return "lib/assets/moon.png";
  }
}