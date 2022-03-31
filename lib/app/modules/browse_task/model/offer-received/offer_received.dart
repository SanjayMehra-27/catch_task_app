class OfferReceived {
  final String id;
  final String userName;
  final double price;
  final double? rating;
  final String message;
  final DateTime dateTime;
  OfferReceived({
    required this.id,
    required this.userName,
    required this.price,
    required this.message,
    this.rating = 0.0,
    required this.dateTime,
  });  
}