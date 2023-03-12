class UserLoginModel{
  String phone='';
  String password='';

  UserLoginModel({
    required this.phone,
    required this.password,
});

  UserLoginModel.fromjson(Map<String,dynamic>json){
      phone:json['phone'];
      password :json['password'];
  }

  Map<String,dynamic>toMap(){
    return{
        'phone':phone,
      'password':password,
    };
  }


}