void main() {
  
  print('Iniciando Gestor de Contactos...');

  //2.1 crear lista de contactos
  List <Contacto> listaContactos = [];
  
  //2.2 crear función para añadir un nuevo contacto a la lista
  agregarContacto( String name, String phoneNumber ) {
      
      final nuevoContacto = Contacto( name, phoneNumber );
    
      listaContactos.add(nuevoContacto);
      
      print( 'El contacto $name fue añadido exitosamente' );
    
  }
  
  //2.3 Función para listar todos los contactos
  listarContactos() {
    if (listaContactos.isEmpty) {
      print('No hay contactos en la agenda.');
      return; // Salir de la función si no hay contactos
    }
    print('\n--- Lista de Contactos ---');
    for (var i = 0; i < listaContactos.length; i++) {
      print('${i + 1}. ${listaContactos[i].toString()}'); // Usamos el toString()         que definimos
    }
    print('--------------------------');
  }
  
  
  //2.4 Función para buscar un contacto por nombre (simple, no sensible a mayúsculas/minúsculas)
  buscarContacto(String nombreBusqueda) {
    print('\n--- Buscando (con índice): "$nombreBusqueda" ---');
    bool encontrado = false;

    // Ciclo for tradicional con índice numérico
    for (int i = 0; i < listaContactos.length; i++) {
      // 'i' es el índice actual, que va de 0 hasta (longitud de la lista - 1)
        final contacto = listaContactos[i]; // Obtenemos el contacto en la posición '       i'

        if (contacto.name.toLowerCase().contains(nombreBusqueda.toLowerCase())) {
        print('Encontrado en índice $i: ${contacto.toString()}');
        encontrado = true;
        }
      
     }

    if (!encontrado) {
        print('No se encontraron contactos que coincidan con "$nombreBusqueda".');
    }
    
    print('-----------------------------');
    
  }
  
  
    // Añadir algunos contactos de ejemplo
  agregarContacto('Juan Perez', '1122334455');
  agregarContacto('Maria Gomez', '9988776655');
  agregarContacto('Pedro Lopez', '5544332211');
  agregarContacto('Ana Garcia', '0011223344');
  agregarContacto('Elias Díaz', '3804130373');
  
  // Listar todos los contactos
  listarContactos();
  
  // Buscar un contacto
  buscarContacto('juan'); // Búsqueda sensible a mayúsculas/minúsculas por      .     .toLowerCase()
  buscarContacto('Ana');
  buscarContacto('Carlos'); // Un contacto que no existe
  
  
}




//1. Definir la clase con sus argumentos  
  class Contacto {
    
    String name;
    String phoneNumber;
    
    Contacto( this.name, this.phoneNumber);
    
   @override
    String toString() {
      return 'Nombre: $name, Teléfono: $phoneNumber';
    }
    
  }
