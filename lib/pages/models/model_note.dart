class ModelDreamApps {
  int _id;
  String _title;
  String _description;

  //Constructor
  ModelDreamApps(this._id, this._title, this._description);

  // Getter
  int get id => _id;
  String get title => _title;
  String get description => _description;

  //Setter
  set title(String newTitle) {
    if (newTitle.length < 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  //Convert a dreamapp to Mapobject
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = _id;
    }

    map['title'] = _title;
    map['description'] = _description;

    return map;
  }

  // Extract dreamapp Object from Map Object
  ModelDreamApps.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
  }
}
