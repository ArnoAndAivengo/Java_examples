package com.example.j2eeapp.services;

import com.example.j2eeapp.domain.UserEntity;

/**
 * Provides processing service to set user authentication session
 * Created by Александр on 04.02.2017.
 */
public interface UserAuthenticationProviderService {

    /**
     * Process user authentication
     *
     * @param user
     * @return
     */
    boolean processUserAuthentication(UserEntity user);
}
