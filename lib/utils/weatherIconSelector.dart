String getWeatherIcon(String weatherType){
  if(weatherType.toLowerCase().contains("clear")){
    return "lib/assets/sun.png";
  }else if(weatherType.toLowerCase().contains("cloud")){
    return "lib/assets/cloud.png";
  }else if(weatherType.toLowerCase().contains("rain")){
    return "lib/assets/rain.png";
  }else if(weatherType.toLowerCase().contains("heavy")){
    return "lib/assets/thunder_lightning.png";
  }else if(weatherType.toLowerCase().contains("snow")){
    return "lib/assets/sun_cloud.png";
  }else{
    return "lib/assets/moon.png";
  }
}