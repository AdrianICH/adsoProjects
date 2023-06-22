import 'package:get/get.dart';
import 'package:pro013/api/conection.dart';

class ControlPersonas extends GetxController {
  // var itemsComboX = [].obs;

  final Rxn<List<persona>> _recibo = Rxn<List<persona>>();

  void Cargalista_recibo(List<persona> X) {
    _recibo.value = X;
  }

  //List? get pREGUNTA => _pREGUNTA.value;
  List<persona>? get recibo => _recibo.value;

//////Lista programa
}
