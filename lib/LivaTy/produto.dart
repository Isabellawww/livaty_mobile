class MyProduto {

  String _nomeProduto;
  int _valorProduto;

  MyProduto(this._nomeProduto,this._valorProduto);

  get nomeProduto => this._nomeProduto;

  set nomeProduto (value) => this._nomeProduto = value;

  get valorProduto => this._valorProduto;

  set valorProduto (final value) => this._valorProduto = value;
}
