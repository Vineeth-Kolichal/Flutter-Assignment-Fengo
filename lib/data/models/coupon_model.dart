class Coupons {
  final List<CouponModel> couponList;

  Coupons({required this.couponList});
  factory Coupons.fromJson(Map<String, dynamic> json) {
    List<CouponModel> couponList = [];
    json['couponList'].forEach((couponModelJson) {
      couponList.add(CouponModel.fromJson(couponModelJson));
    });

    return Coupons(couponList: couponList);
  }
}

class CouponModel {
  final int id;
  final double amount;

  CouponModel({required this.id, required this.amount});
  factory CouponModel.fromJson(Map<String, dynamic> json) {
    return CouponModel(id: json["id"], amount: json['amount']);
  }
}
