package com.example.Sample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SampleApplication.class, args);
	}
 @RequestMapping(value="/geeting")
	 public Geeting getGeeting() {
	 
	 Geeting g=new Geeting();
	 g.setGeeting("HI ALLL INDIA");
	return g;
	 
 }
}
