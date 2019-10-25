package com.undec.corralon.service;


import com.undec.corralon.DTO.Response;
import com.undec.corralon.excepciones.usuario.UsuarioErrorAuthenticationUserNameException;
import com.undec.corralon.excepciones.usuario.UsuarioErrorAuthenticationUserPasswordException;
import com.undec.corralon.repository.UsuarioRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service

public class UsuarioService {
    @Autowired
    UsuarioRepository usuarioRepository;

    public Response validarUsuario (String userName, String userPass) throws Exception {
        Response response = new Response();
        if (userName == null)
            throw new UsuarioErrorAuthenticationUserNameException();
        if (userPass == null)
            throw new UsuarioErrorAuthenticationUserPasswordException();

    return response;
    }
}
