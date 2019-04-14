package org.github.kalexmills.microsvcspringboot.healthcheck;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController("/healthz")
public class HealthcheckController {

  @GetMapping
  public String root() {
    return "pass";
  }
}
