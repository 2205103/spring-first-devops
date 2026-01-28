package com.example.dunno;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaRepositories("com.example.dunno.repository")
public class DunnoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DunnoApplication.class, args);
	}

}
