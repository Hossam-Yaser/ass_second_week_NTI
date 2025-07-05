//
//class UserManager { void saveUserToDatabase(String name) { 
//  // save logic
//} void sendWelcomeEmail(String email) { 
//  // email logic
//}
//
//this violates the Single Responsibility Principle (SRP) because it has two reasons to change:
// 1. Changes in user management logic (e.g., saving to a different database).
// 2. Changes in email sending logic (e.g., using a different email service).
//To adhere to SRP, we can refactor the code into two separate classes:
//class UserRepository {
//  void saveUserToDatabase(String name) {
//    // save logic
//  }
//}
//class EmailService {
//  void sendWelcomeEmail(String email) {
//    // email logic
//  }
//}
