class Applink {
  static const String server = 'http://10.0.2.2/ecommerce';
  static const String test = '$server/test.php';
  //============================================ Auth ============================================//
  static const String signupLink = '$server/Auth/signup.php';
  static const String loginLink = '$server/Auth/login.php';
  static const String verfiyCodeSignUp = '$server/Auth/verfiycode.php';
  //============================================ forget passwrod ============================================//
  static const String checkEmailLink = '$server/forget_password/checkEmail.php';
  static const String verfiyCodeCheckEmailLink = '$server/forget_password/verfiyCode.php';
  static const String reseetPasswordLink =
      '$server/forget_password/resetPasswrod.php';
}
