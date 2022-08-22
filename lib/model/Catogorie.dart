class catogorie{
  late int id;
  late String name2;
  catogorie.fromJson(Map json)
      : id = json['id'],
        name2 = json ['name2'];

  Map toJson() {
    return {'id': id, 'name2': name2};
  }
  catogorie(this.id, this.name2);
}