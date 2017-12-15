package ProyectoFinalWeb

class Usuario {

    String email
    String password
    String nombre
    String apellido
    TipoUsuario tipo

    String toString()
    { "$email" }

    static constraints = {
        nombre(blank: false)
        apellido(blank: false)
        email(blank: false, unique: true)
        password(blank: false, password:true)
        tipo(blank: false)
    }
}
