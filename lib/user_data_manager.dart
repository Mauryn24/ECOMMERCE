class UserDataManager {
  // Dummy user data for demonstration
  static Map<String, dynamic> _userData = {
    'name': 'John Doe',
    'email': 'john@example.com',
    'address': '123 Main St, City',
    'phone': '123-456-7890',
  };

  // Method to get user data
  static Map<String, dynamic> getUserData() {
    return _userData;
  }

  // Method to update user data
  static void updateUserData(Map<String, dynamic> newData) {
    _userData = newData;
  }

  // Method to delete user data
  static void deleteUserData() {
    _userData = {};
  }
}
