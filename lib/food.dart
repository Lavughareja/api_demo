/// FoodName : "FoodName 2"
/// FoodImage : "https://loremflickr.com/640/480/food"
/// FoodDetails : "Libero sint magni inventore sint."
/// FoodTitle : "FoodTitle 2"
/// studentID : "2"

class Food {
  Food({
      String? foodName, 
      String? foodImage, 
      String? foodDetails, 
      String? foodTitle, 
      String? studentID,}){
    _foodName = foodName;
    _foodImage = foodImage;
    _foodDetails = foodDetails;
    _foodTitle = foodTitle;
    _studentID = studentID;
}

  Food.fromJson(dynamic json) {
    _foodName = json['FoodName'];
    _foodImage = json['FoodImage'];
    _foodDetails = json['FoodDetails'];
    _foodTitle = json['FoodTitle'];
    _studentID = json['studentID'];
  }
  String? _foodName;
  String? _foodImage;
  String? _foodDetails;
  String? _foodTitle;
  String? _studentID;
Food copyWith({  String? foodName,
  String? foodImage,
  String? foodDetails,
  String? foodTitle,
  String? studentID,
}) => Food(  foodName: foodName ?? _foodName,
  foodImage: foodImage ?? _foodImage,
  foodDetails: foodDetails ?? _foodDetails,
  foodTitle: foodTitle ?? _foodTitle,
  studentID: studentID ?? _studentID,
);
  String? get foodName => _foodName;
  String? get foodImage => _foodImage;
  String? get foodDetails => _foodDetails;
  String? get foodTitle => _foodTitle;
  String? get studentID => _studentID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['FoodName'] = _foodName;
    map['FoodImage'] = _foodImage;
    map['FoodDetails'] = _foodDetails;
    map['FoodTitle'] = _foodTitle;
    map['studentID'] = _studentID;
    return map;
  }

}