// class OrderService {
//   void createOrder(String productId) {
//     print("Order created");
//     print("Order saved to DB");
//     print("Email sent to customer");
//   }
// }
// *******************************************************************************************************//
// this violates the solid principle of Single Responsibility Principle (SRP) because the OrderService class has multiple reasons to change:
// 1. Changes in order creation logic (e.g., different product handling).
// 2. Changes in database saving logic (e.g., using a different database).
// 3. Changes in email sending logic (e.g., using a different email service).
//***********************************************************************************************************//
// To adhere to SRP, we can refactor the code into three separate classes:

// class OrderRepository {
//   void saveOrderToDatabase(String productId) {
//     print("Order saved to DB");
//   }
// }

//class EmailService {
//  void sendOrderConfirmationEmail(String email) {
//    print("Email sent to $email");
//  }
//}
