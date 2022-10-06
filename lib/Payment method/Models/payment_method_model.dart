class CreditCard {
  String cardNumber;
  String expMonth;
  String expYear;
  String securityCode;
  String firstName;
  String lastName;

  CreditCard({required this.cardNumber, required this.expMonth, required this.expYear, required this.securityCode,
      required this.firstName, required this.lastName});
}

List<CreditCard> creditCards = [
  CreditCard(
      cardNumber: '123456789',
      expMonth: '05',
      expYear: '2025',
      securityCode: '0000',
      firstName: 'Walid',
      lastName: 'Walid'
  ),

  CreditCard(
      cardNumber: '987654321',
      expMonth: '03',
      expYear: '2027',
      securityCode: '7715',
      firstName: 'Ali',
      lastName: 'Ali'
  ),


];