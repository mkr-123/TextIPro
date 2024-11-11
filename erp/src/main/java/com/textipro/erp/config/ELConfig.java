package com.textipro.erp.config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.el.ExpressionFactory;
import org.apache.tomcat.InstanceManager;
import org.apache.tomcat.SimpleInstanceManager;

@Configuration
public class ELConfig {

    @Bean
    public ExpressionFactory expressionFactory() {
        return new com.sun.el.ExpressionFactoryImpl();
    }

    @Bean
    public InstanceManager instanceManager() {
        return new SimpleInstanceManager();
    }
}

