package com.webApp.service;

import com.webApp.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
