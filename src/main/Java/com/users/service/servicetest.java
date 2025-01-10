package com.service;


import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class UserServiceTest {

    private UserDao userDao;
    private UserService userService;

    @BeforeEach
    void setUp() {
        userDao = Mockito.mock(UserDao.class); // Mocking the UserDao
        userService = new UserService(userDao); // Injecting the mock
    }

    @Test
    void testRegisterUser_Success() {
        User user = new User("testuser", "password123", "testuser@example.com");

        when(userDao.saveUser(user)).thenReturn(true); // Mock behavior
        boolean result = userService.registerUser(user);

        assertTrue(result, "User should be registered successfully");
        verify(userDao, times(1)).saveUser(user); // Ensure saveUser was called once
    }

    @Test
    void testRegisterUser_Failure() {
        User user = new User("testuser", "password123", "testuser@example.com");

        when(userDao.saveUser(user)).thenReturn(false); // Mock behavior
        boolean result = userService.registerUser(user);

        assertFalse(result, "User registration should fail");
        verify(userDao, times(1)).saveUser(user); // Ensure saveUser was called once
    }

    @Test
    void testLogin_Success() {
        String username = "testuser";
        String password = "password123";

        when(userDao.validateUser(username, password)).thenReturn(true); // Mock behavior
        boolean result = userService.login(username, password);

        assertTrue(result, "Login should succeed with correct credentials");
        verify(userDao, times(1)).validateUser(username, password); // Ensure validateUser was called once
    }

    @Test
    void testLogin_Failure() {
        String username = "testuser";
        String password = "wrongpassword";

        when(userDao.validateUser(username, password)).thenReturn(false); // Mock behavior
        boolean result = userService.login(username, password);

        assertFalse(result, "Login should fail with incorrect credentials");
        verify(userDao, times(1)).validateUser(username, password); // Ensure validateUser was called once
    }
}
