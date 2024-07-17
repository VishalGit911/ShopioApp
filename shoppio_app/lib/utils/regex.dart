class RegSignin {
  static RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  static bool emailChek(String email) {
    return emailRegex.hasMatch(email);
  }

  static RegExp passwordRegex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  static bool passwordChek(String password) {
    return passwordRegex.hasMatch(password);
  }
}
