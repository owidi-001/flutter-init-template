String? nameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }

  if (RegExp(r'[0-9]').hasMatch(value)) {
    return 'Name should not contain numbers';
  }

  List<String> names = value.trim().split(' ');
  if (names.length < 2) {
    return 'Please provide your full name';
  }

  return null;
}

String? storeNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Store name is required';
  }

  if (RegExp(r'[0-9]').hasMatch(value)) {
    return 'Store name should not contain numbers';
  }

  return null;
}

String? emailValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email address is required';
  }
  final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  if (!emailRegex.hasMatch(value)) {
    return 'Enter a valid email address';
  }
  return null;
}

String? phoneNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }

  // Check if the phone number is exactly 10 digits
  if (value.length != 10) {
    return 'Phone number must be exactly 10 digits long';
  }

  // Check if the phone number starts with 07 or 01
  if (!value.startsWith('07') && !value.startsWith('01')) {
    return 'Phone number must start with "07" or "01"';
  }

  // Check if the phone number contains only digits
  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
    return 'Phone number must contain only digits';
  }

  return null;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Password is required';
  }

  // Minimum 8 characters
  if (value.length < 8) {
    return 'Password must be at least 8 characters long';
  }

  // Must contain at least one uppercase letter
  if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
    return 'Password must contain at least one uppercase letter';
  }

  // Must contain at least one lowercase letter
  if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
    return 'Password must contain at least one lowercase letter';
  }

  // Must contain at least one digit
  if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
    return 'Password must contain at least one digit';
  }

  // Must contain at least one special character
  if (!RegExp(r'(?=.*[@$!%*?&])').hasMatch(value)) {
    return 'Password must contain at least one special character';
  }

  return null;
}

String? passwordConfirmValidator(String? password1, String? password2) {
  if (passwordValidator(password1) != null &&
      passwordValidator(password2) != null) {
    return passwordValidator(password1);
  }

  if (password1 != password2) {
    return "The passwords are mismatch";
  }

  return null;
}
