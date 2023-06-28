package com.jumusu.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@ComponentScan("com.jumusu.controller")
@EnableWebMvc
public class SpringMvcConfig implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/pages/**").addResourceLocations("/pages/");
        registry.addResourceHandler("/css/**").addResourceLocations("/css/");
        registry.addResourceHandler("/js/**").addResourceLocations("/js/");
        registry.addResourceHandler("/fonts/**").addResourceLocations("/fonts/");
        registry.addResourceHandler("/images/**").addResourceLocations("/images/");
        registry.addResourceHandler("/partials/**").addResourceLocations("/partials/");
        registry.addResourceHandler("/scss/**").addResourceLocations("/scss/");
        registry.addResourceHandler("/vendors/**").addResourceLocations("/vendors/");
        registry.addResourceHandler("/index").addResourceLocations("/");
    }
}
