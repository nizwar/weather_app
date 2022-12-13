# Weather APP
This is a simple weather app that shows weather information based on user's location. This app is built using Flutter and Dart.

The app is built within under 24 hours, so it's not that perfect 😊

[Click here to download the app](https://github.com/nizwar/weather_app/releases)

## Features
* Show weather information based on user's location
* Show weather information based on user's selected location
* Adaptive theme based on weather condition and time

## Environment Setup
Create `environment.dart` inside `lib/core/resources/environment.dart` and put following environment variables to run the project
```dart
    const String endpoint = "https://api.openweathermap.org/data/2.5/";
    const String weatherKey = "";
    const String weatherIcon = "https://openweathermap.org/img/wn/";
    const String googleApiKey = "";
    const List<double> defaultLocation = [-5, 120]; //INDONESIA
```

## Setup API
Get your keys from following sites
* Weather API : [openweathermap](https://openweathermap.org/api) 
* Google Maps API : [google](https://developers.google.com/maps/documentation)

## Screenshot
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxkj9BxuR0XWkDTMwVwG0kbX3r5kUCAqm9bRhd7r4v8OarCuenkERSSViYtYa6Fzbp3sVhJQVLMYBH19SovZvmcNSYXwBAnqTDKV34EwMdbXRNgVY4DloLVSUjdddgdnIK5Aou2sbLdS3RvBMeiYyHOp7JR45mYyaIjYw-Gl9sFXZwSrihXp21E2Q4/s1600/Screenshot_1670951026.png">
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhxkj9BxuR0XWkDTMwVwG0kbX3r5kUCAqm9bRhd7r4v8OarCuenkERSSViYtYa6Fzbp3sVhJQVLMYBH19SovZvmcNSYXwBAnqTDKV34EwMdbXRNgVY4DloLVSUjdddgdnIK5Aou2sbLdS3RvBMeiYyHOp7JR45mYyaIjYw-Gl9sFXZwSrihXp21E2Q4/s300/Screenshot_1670951026.png" alt="Sunrise Adaptive UI"></a>
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiWmZWicfzyKeS8sVObJL-69aF9tbDm5xhxQVM1cFZ2ysOcKhKtMc6qly-k68QQG3ZgVTrAn71iUA6188rYCK61eL4l4IUgLNR2nHgZdhLHmdFXXjfguWmTpfq8_5SZdGO_piK1koA0_hn-WeQP_K9F9jwwKT9PxmXiDQXKMnByoDJVZcEbOlUTtpY9/s1600/Screenshot_1670951262.png">
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEiWmZWicfzyKeS8sVObJL-69aF9tbDm5xhxQVM1cFZ2ysOcKhKtMc6qly-k68QQG3ZgVTrAn71iUA6188rYCK61eL4l4IUgLNR2nHgZdhLHmdFXXjfguWmTpfq8_5SZdGO_piK1koA0_hn-WeQP_K9F9jwwKT9PxmXiDQXKMnByoDJVZcEbOlUTtpY9/s300/Screenshot_1670951262.png" alt="Midnight Adaptive UI"></a>
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjiOSe0ikmYXlPkmVXZkmAXrVeMh8ZykIgHpcLs8qFncZsdYChG_Pv2kkDiRMaA4RPNvAjSFi7uI-P7eP-Qf1QvJnj6IECiisuAK30IOb1ciswoymFv4Z4ya7fr53U0rJYs7QZB1UTyYNIyloGnH5NEp_DPcTn2TWblDhu9GwHJnhnh1c9kPVA9O4LA/s1600/Screenshot_1670953652.png">
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjiOSe0ikmYXlPkmVXZkmAXrVeMh8ZykIgHpcLs8qFncZsdYChG_Pv2kkDiRMaA4RPNvAjSFi7uI-P7eP-Qf1QvJnj6IECiisuAK30IOb1ciswoymFv4Z4ya7fr53U0rJYs7QZB1UTyYNIyloGnH5NEp_DPcTn2TWblDhu9GwHJnhnh1c9kPVA9O4LA/s300/Screenshot_1670953652.png" alt="Sunset Adaptive UI"></a>
<a href="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgongZCNATvyjD-PEvPGcELkx-Ud2z_oYaiTL7xhrWCoZU5WCSwIOsvah3ITyr4SswdPYtoZv8i4uhLbCFtt860S9TUfdm6WsT61kUmcCdgXc8Jz4bnvhCxptIeYdv85OaVfgptzKBaSXVRivck4EyX5jvV1JAB5LNE339N_Rmonym0uT85Dw83ohen/s1600/Screenshot_1670953969.png">
<img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgongZCNATvyjD-PEvPGcELkx-Ud2z_oYaiTL7xhrWCoZU5WCSwIOsvah3ITyr4SswdPYtoZv8i4uhLbCFtt860S9TUfdm6WsT61kUmcCdgXc8Jz4bnvhCxptIeYdv85OaVfgptzKBaSXVRivck4EyX5jvV1JAB5LNE339N_Rmonym0uT85Dw83ohen/s300/Screenshot_1670953969.png" alt="Morning Adaptive UI"></a>

## Support Me
If you like this project, please give me a star ⭐️ and follow me on GitHub
