package com.sample.oauth.config.beans;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class CommonBeans {
    /**
     * Bean for Password encoder
     * @Return password encoder
     */
    @Bean
    public PasswordEncoder encoder() {
        return PasswordEncoderFactories
                .createDelegatingPasswordEncoder();
    }
}
