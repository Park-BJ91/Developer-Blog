package com.developer.blog.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.tiles3.TilesConfigurer;
import org.springframework.web.servlet.view.tiles3.TilesView;
import org.springframework.web.servlet.view.tiles3.TilesViewResolver;

@Configuration
public class TilesConfig {

    // TilesConfigurer
    @Bean
    public TilesConfigurer tilesConfigurer() {
        final TilesConfigurer configurer = new TilesConfigurer();

        //tiles.xml 경로
        configurer.setDefinitions(new String[]{"classpath:/tiles/tiles.xml"});

        //Refresh 가능 여부
        configurer.setCheckRefresh(true);

        return configurer;
    }

    // TilesViewResolver
    @Bean
    public TilesViewResolver tilesViewResolver() {
        final TilesViewResolver tilesViewResolver = new TilesViewResolver();
        tilesViewResolver.setViewClass(TilesView.class);
        tilesViewResolver.setOrder(1); //view 우선순위
        return tilesViewResolver;
    }
}
