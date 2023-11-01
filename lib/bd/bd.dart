import 'package:mysql1/mysql1.dart';


class BD{final settings = new ConnectionSettings(host: '143.106.241.3', port: 3306, user: 'cl201283', password: '9rioi25sa4', db: 'cl201283');

  Future<MySqlConnection> getConnection() async{
    return await MySqlConnection.connect(settings);
  }

}

