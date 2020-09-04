package com.undec.corralon.modelo;

import java.io.Serializable;

public class JwtResponse implements Serializable {

    private static final long serialVersionUID = 7920958456043411121L;

    private final String jwttoken;

    public JwtResponse(String jwttoken) {
        this.jwttoken = jwttoken;
    }

    public String getToken() {
        return this.jwttoken;
    }
}
