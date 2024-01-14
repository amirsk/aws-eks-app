package com.example.demo.config;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class OpenAPIConfig {

    @Bean
    public OpenAPI awsEksAppOpenAPIConfig() {
        return new OpenAPI()
                .info(new Info()
                        .title("AWS EKS App Swagger")
                        .version("1.0.0")
                        .description("Swagger for Open API Spec for AWS EKS App")
                );
    }

}
