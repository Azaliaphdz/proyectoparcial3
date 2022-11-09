//
//  Alumno.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

class Alumno {
    var nombre: String
    var matricula: String
    var carrera: String
    var direccion: String
    var cel: String
    var correo: String
    
    init(nombre: String, matricula: String, carrera: String, direccion: String, cel: String, correo: String) {
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.direccion = direccion
        self.cel = cel
        self.correo = correo
    }
    
}
