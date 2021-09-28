import 'package:comein_web/screen/comein_admin_login/comein_admin_login_screen.dart';
import 'package:comein_web/screen/hotel/home/hotel_home_screen.dart';
import 'package:comein_web/screen/hotel/otp_screen.dart';
import 'package:comein_web/screen/hotel/reset_password_screen.dart';
import 'package:comein_web/screen/hotel_admin_login/hotel_admin_login_screen.dart';
import 'package:comein_web/screen/hotel_register/hotel_register_screen.dart';
import 'package:comein_web/screen/login/login_screen.dart';
import 'package:comein_web/screen/main/main_screen.dart';
import 'package:comein_web/screen/tour/tour_main_screen.dart';
import 'package:comein_web/screen/tour_admin_login/tour_admin_login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:comein_web/screen/sign_in/sign_in_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  // SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  MainScreen.routeName: (context) => MainScreen(),
  HotelAdminLoginScreen.routeName: (context) => HotelAdminLoginScreen(),
  HotelRegisterScreen.routeName: (context) => HotelRegisterScreen(),
  HotelHomeScreen.routeName: (context) => HotelHomeScreen(),
  ComeinAdminLoginScreen.routeName: (context) => ComeinAdminLoginScreen(),
  TourAdminLoginScreen.routeName: (context) => TourAdminLoginScreen(),
  TourMainScreen.routeName: (context) => TourMainScreen(),
  HotelResetPasswordScreen.routeName: (context) => HotelResetPasswordScreen(),
  HotelOTPScreen.routeName: (context) => HotelOTPScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  // OtpPasswordScreen.routeName: (context) => OtpPasswordScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
