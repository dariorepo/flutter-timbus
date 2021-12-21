class ValidadorCampos {
  String validarClave(String value) {
    String pattern = r'(^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{6,}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado la clave";
    } else if (value.length < 8) {
      return "La lave debe tener al menos 8 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "La clave debe contener al menos una letra mayuscula, una letra minuscula y un número";
    }
    return null;
  }

  String validarEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no se ha ingresado el email";
    } else if (!regExp.hasMatch(value)) {
      return "El Email ingresado aun no cumple las especificiaciones de valide";
    } else {
      return null;
    }
  }

  String validarClaveRepetida(String value, String value2) {
    print('ambas claves ' + value + '' + value2);
    if (value != value2) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

    
  String validarNit(String value) {
    String pattern = r'(^[0-9]*$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado el numero de nit";
      //return "debe tener  10 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return " debe tener solo numeros";
    }
    return null;
  }
  String validarCedula(String value) {
    String pattern = r'(^[0-9]*$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado el numero de cedula";
    } else if (value.length > 10) {
      return "debe tener  10 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return " debe tener solo numeros";
    }
    return null;
  }
  String validarNombre(String value) {
    String pattern = r'(^[a-zA-Z ]*$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado su nombre";
    } else if (value.length > 30) {
      return "debe tener  por lo menos 30 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "el nombre debe tener solo letras";
    }
    return null;
  }
  String validarApellido(String value) {
    String pattern = r'(^[a-zA-Z ]*$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado su apellido";
    } else if (value.length >30) {
      return "debe tener  por lo menos 30 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "el apellido solo debe tener letras";
    }
    return null;
  }
  
  String validarTelefono(String value) {
    String pattern = r'(^[0-9]*$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado el numero de telefono";
    } else if (value.length > 10) {
      return "debe tener  10 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "el telefono debe tener solo numeros";
    }
    return null;
  }

  String validarDirecion(String value) {
    String pattern = r'(^[#.0-9a-zA-Z\s,-]+$)' ;
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Aun no ha digitado su direccion";
    } else if (value.length > 30) {
      return "al menos debe tener 30 caracteres";
    } else if (!regExp.hasMatch(value)) {
      return "la Direccion ingresada aun no cumple las especificiaciones de valides";
    }
    return null;
  }
  

}
