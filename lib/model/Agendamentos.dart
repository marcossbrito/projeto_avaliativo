class Agendamentos {
  //Atributos
  String _id;
  String _paciente;
  String _tipo;
  String _data;
  String _clinica;
  String _endereco;

  //Construtor
  Agendamentos(this._id, this._clinica, this._data, this._endereco, this._paciente, this._tipo);

  //Getters
  String get id => _id;
  String get paciente => _paciente;
  String get tipo => _tipo;
  String get data => _data;
  String get clinica => _clinica;
  String get endereco => _endereco;

  Agendamentos.map(dynamic obj) {
    this._id = obj['id'];
    this._paciente = obj['paciente'];
    this._tipo = obj['tipo'];
    this._data = obj['data'];
    this._clinica = obj['clinica'];
    this._endereco = obj['endereco'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["paciente"] = _paciente;
    map["tipo"] = _tipo;
    map["data"] = _data;
    map["clinica"] = _clinica;
    map["endereco"] = _endereco;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  Agendamentos.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._paciente = map["paciente"];
    this._tipo = map["tipo"];
    this._data = map["data"];
    this._clinica = map["clinica"];
    this._endereco = map["endereco"];
  }
}
