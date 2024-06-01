package com.zoom.videocall;

import com.zoom.videocall.user.User;
import com.zoom.videocall.user.UserService;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication

public class VideoCallApplication {

    public static void main(String[] args) {
        SpringApplication.run(VideoCallApplication.class, args);
    }

    @Bean
    public CommandLineRunner commandLineRunner(UserService service){
        return args -> {
            service.registerUser(User.builder()
                            .username("nanu")
                            .email("nanu@gmail.com")
                            .password("hmm")
                    .build());

            service.registerUser(User.builder()
                    .username("arun")
                    .email("arun@gmail.com")
                    .password("hmm")
                    .build());
            service.registerUser(User.builder()
                    .username("shubham")
                    .email("shubham@gmail.com")
                    .password("hmm")
                    .build());

            service.registerUser(User.builder()
                    .username("mohan")
                    .email("mohan@gmail.com")
                    .password("hmm")
                    .build());
        };
    }
}
