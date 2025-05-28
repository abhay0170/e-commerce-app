class TValidator {

  // validate email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    // reguler expression for emailvalidation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'invalied email address';
    }
    return null;
  }

  // validate password 
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password requiered';
    }

    // check if the length is atleaast 6
    if (value.length < 6) {
      return 'Password must beat least 6 charectos long';
    }

    // check for upper case letter
    if (value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain atleast one upper case letter';
    }

    // check for numbers
    if (value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain atleast one number';
    }

    // check for special charectors
    if (value.contains(RegExp(r'[!@#$%^&*(),.?":{}[<>]'))) {
      return 'Password must contain one special charector';
    }
    return null;
  }

  // valudate phone number
  static String? validatePhoneNumber(String? value){
    if (value == null || value.isEmpty) {
      return 'Phone number is requiered';
    }

    // Regular expression for validating phone number (assuming it's a 10 digit number)
    final phoneRegExp =RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalied phone number formate (10 digit required)';
    }
      return null;
  }
}
