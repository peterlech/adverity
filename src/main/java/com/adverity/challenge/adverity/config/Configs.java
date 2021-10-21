package com.adverity.challenge.adverity.config;

import com.fasterxml.jackson.databind.MapperFeature;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;

/**
 * @author Piotr Lechnio <p.lechnio@webellian.com>
 */
@Configuration
public class Configs {

  @Bean
  public Jackson2ObjectMapperBuilderCustomizer initJackson() {
    Jackson2ObjectMapperBuilderCustomizer c = new Jackson2ObjectMapperBuilderCustomizer() {

      @Override
      public void customize(Jackson2ObjectMapperBuilder builder) {
        builder.featuresToEnable(MapperFeature.ACCEPT_CASE_INSENSITIVE_PROPERTIES);
      }
    };

    return c;
  }
}
