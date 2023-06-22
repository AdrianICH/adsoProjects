import 'package:get/get.dart';
import 'package:reto2_carrito/classes/productos.dart';

class controladorGeneral extends GetxController {
  // Este valor permite controlar en qué pagina navegamos
  final _posicionPagina = 0.obs;

  // Esta lista almacenará los productos
  final pro = <productos>[].obs;

  @override
  // Esta funcion añade cuatro productos a la lista para mostrar en la tienda
  void onInit() {
    pro.add(productos(1, "Monitor 27'", 1200000, 0, "monitor.jpg"));
    pro.add(productos(2, "Silla Gamer", 500000, 0, "sillagmr.jpg"));
    pro.add(productos(3, "Disco duro 1tb'", 200000, 0, "hdd1t.jpg"));
    pro.add(productos(4, "Adaptador USB-A USB-C", 70000, 0, "adapter.jpg"));
    super.onInit();
  }

  // Esta funcion sirve para navegar a traves de las diferentes partes de la aplicacion
  void cambiarPosicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  // Esta funcion cambia la cantidad de articulos a comprar
  void cambiarCantidad(int posicion, int valor) {
    print("Posicion = $posicion  |  Cantidad = $valor");
    pro[posicion].cantidad = valor;
  }

  // Esta funcion calcula en monto total tomando en cuenta la cantidad y el precio de los productos
  int calcularTotal() {
    int total_1 = 0;

    for (var i = 0; i < pro.length; i++) {
      if (pro[i].cantidad > 0) {
        total_1 += pro[i].cantidad * pro[i].precio;
      }
    }
    return total_1;
  }

  // Esta funcion limpia el carrito por completo
  void limpiarCarrito() {
    for (var i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
