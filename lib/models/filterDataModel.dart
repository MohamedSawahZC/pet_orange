class FilterModel{
    List<Breed>? breeds =[];
    List<ages>? Ages =[];
    List<size>? Size =[];
    List<goodWith>? GoodWith =[];
    List<gender>? Gender =[];
    List<colors>? Colors =[];
    List<hairLength>? HairLength =[];
    List<behaviour>? Behaviour =[];
    FilterModel.fromJson(Map<String,dynamic>json){
      json['breed'].forEach((element){
        breeds!.add(Breed.fromJson(element));
      });
    }
}

class Breed{
  String? data;
  Breed.fromJson(Map<String,dynamic>json){
    data=json['breed'];
  }
}class ages{
  String? data;
  ages.fromJson(Map<String,dynamic>json){
    data=json['ages'];
  }
}
class size{
  String? data;
  size.fromJson(Map<String,dynamic>json){
    data=json['size'];
  }
}
class goodWith{
  String? data;
  goodWith.fromJson(Map<String,dynamic>json){
    data=json['goodWith'];
  }
}
class gender{
  int? data;
  gender.fromJson(Map<String,dynamic>json){
    data=json['gender'];
  }
}
class colors{
  int? data;
  colors.fromJson(Map<String,dynamic>json){
    data=json['colors'];
  }
}
class hairLength{
  int? data;
  hairLength.fromJson(Map<String,dynamic>json){
    data=json['hairLength'];
  }
}
class behaviour{
  int? data;
  behaviour.fromJson(Map<String,dynamic>json){
    data=json['behaviour'];
  }
}
