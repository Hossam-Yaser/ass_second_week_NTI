// class PaymentProcessor {
// void processPayment(Object paymentMethod, double amount) {
// if (paymentMethod is CreditCard) {
// // process credit card payment
// paymentMethod.payWithCreditCard(amount: amount, cardNumber: '');
// } else if (paymentMethod is PayPal) {
// // process paypal payment
// paymentMethod.payWithPayPal(amount: amount, email: '');
// }
// }
// }
// class CreditCard {
// payWithCreditCard({required double amount, required String cardNumber}) {
// // process credit card payment
// print('Processing credit card payment of $amount with card number $cardNumber');
// }
// }
// class PayPal {
// payWithPayPal({required double amount, required String email}) {
// // process paypal payment
// print('Processing paypal payment of $amount with email $email');
// }
// }
//************************************************************************************************************************************************************************************************************************************************* */
// This code violates the Open/Closed Principle (OCP) because the PaymentProcessor class is not open for extension. If we want to add a new payment method, we have to modify the PaymentProcessor class, which goes against the OCP.
// To adhere to the Open/Closed Principle, we can use polymorphism and create an interface for payment methods. This way, we can add new payment methods without modifying the PaymentProcessor class.  
// 
//abstract class PaymentMethod {
//   void pay(double amount);
// }
// class CreditCard implements PaymentMethod {
//   final String cardNumber;

//   CreditCard(this.cardNumber);

//   @override
//   void pay(double amount) {
//     print('Processing credit card payment of $amount with card number $cardNumber');
//   }
// }
// class PayPal implements PaymentMethod {
//   final String email;

//   PayPal(this.email);

//   @override
//   void pay(double amount) {
//     print('Processing PayPal payment of $amount with email $email');
//   }
// }
// class PaymentProcessor {
//   void processPayment(PaymentMethod paymentMethod, double amount) {
//     paymentMethod.pay(amount);
//   }
// }
