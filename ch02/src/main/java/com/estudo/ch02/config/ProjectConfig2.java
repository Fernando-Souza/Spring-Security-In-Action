package com.estudo.ch02.config;

import org.springframework.security.core.userdetails.User;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import com.estudo.ch02.security.CustomAuthenticationProvider;

@Configuration
public class ProjectConfig2 {

    private final CustomAuthenticationProvider authenticationProvider;

    public ProjectConfig2(CustomAuthenticationProvider authenticationProvider) {
        this.authenticationProvider = authenticationProvider;
    }

    @Bean
  SecurityFilterChain configure(HttpSecurity http) throws Exception {
    http.httpBasic(Customizer.withDefaults());    

    http.authorizeHttpRequests(
        c -> c.anyRequest().authenticated()
    );

    var user = User.withUsername("Maria")
        .password("54321")
        .authorities("read")
        .build();

    var userDetailsService = new InMemoryUserDetailsManager(user);

    http.userDetailsService(userDetailsService);

    http.authenticationProvider(authenticationProvider);

    return http.build();
  }

  @Bean
  PasswordEncoder passwordEncoder() {
    return NoOpPasswordEncoder.getInstance();
  }
    
}