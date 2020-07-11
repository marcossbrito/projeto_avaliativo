class Usuario {
  //Atributos
  String _id;
  String _login;
  double _senha;

  //Construtor
  Usuario(this._id, this._login, this._senha);

  //Getters
  String get id => _id;
  String get nome => _login;
  double get preco => _senha;

  Usuario.map(dynamic obj) {
    this._id = obj['id'];
    this._login = obj['login'];
    this._senha = obj['senha'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["login"] = _login;
    map["senha"] = _senha;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  Usuario.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._login = map["login"];
    this._login = map["senha"];
  }
}
