class SubcriptionsModel {
  final String namePackage;
  final String? priceDiscount;
  final String price;
  final String duration;

  SubcriptionsModel({
    required this.namePackage,
    required this.priceDiscount,
    required this.price,
    required this.duration,
  });
}

final List<SubcriptionsModel> listSubcriptions = [
  SubcriptionsModel(
    namePackage: 'Yearly',
    priceDiscount: '-66%',
    price: '€ 94.80',
    duration: 'every year',
  ),
  SubcriptionsModel(
    namePackage: 'Monthly',
    priceDiscount: '-53%',
    price: '€ 10.90',
    duration: 'every month',
  ),
  SubcriptionsModel(
    namePackage: 'Weekly',
    priceDiscount: null,
    price: '€ 5.90',
    duration: 'every week',
  ),
];
