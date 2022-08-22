class Character {
  int id;
  String name;
 // String photoUrls;
  String status;


  Character.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        //photoUrls = json['photoUrls'],
       status = json['status'];



  Map toJson() {


    return {'id': id, 'name': name,  'catogorie': status };
  }


}
