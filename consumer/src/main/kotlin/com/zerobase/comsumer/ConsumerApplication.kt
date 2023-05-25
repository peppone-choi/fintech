package com.zerobase.comsumer

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.autoconfigure.domain.EntityScan
import org.springframework.boot.runApplication

@SpringBootApplication
@EntityScan(basePackages = ["com.zerobase.domain"])
class ConsumerApplication
fun main(args: Array<String>) {
    runApplication<ConsumerApplication>(*args)
}