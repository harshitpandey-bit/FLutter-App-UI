// validators.dart

String? validateInput(String value, String fieldType) {
  if (value.isEmpty) {
    return 'Please enter your $fieldType';
  }

  switch (fieldType) {
    case 'email':
      return _validateEmail(value);
    case 'password':
      return _validatePassword(value);
    case 'phone':
      return _validatePhone(value);
    case 'username':
      return _validateUsername(value);
    default:
      return 'Invalid field type';
  }
}

String? _validateEmail(String value) {
  const emailPattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  final regex = RegExp(emailPattern);
  if (!regex.hasMatch(value)) {
    return 'Please enter a valid email';
  }
  return null;
}

String? _validatePassword(String value) {
  const passwordPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
  final regex = RegExp(passwordPattern);
  if (!regex.hasMatch(value)) {
    return 'Password must be at least 8 characters long and include at least one uppercase letter, one lowercase letter, and one number';
  }
  return null;
}

String? _validatePhone(String value) {
  const phonePattern = r'^\+?1?\d{9,15}$'; // Example pattern
  final regex = RegExp(phonePattern);
  if (!regex.hasMatch(value)) {
    return 'Please enter a valid phone number';
  }
  return null;
}

String? _validateUsername(String value) {
  const usernamePattern = r'^[a-zA-Z0-9_]{3,16}$'; // Example pattern
  final regex = RegExp(usernamePattern);
  if (!regex.hasMatch(value)) {
    return 'Username must be 3-16 characters long and include only letters, numbers, and underscores';
  }
  return null;
}
