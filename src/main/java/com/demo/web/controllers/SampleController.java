package com.demo.web.controllers;

import com.demo.models.Sample;
import com.demo.services.SampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SampleController {

    @Autowired
    private SampleService sampleService;

    @RequestMapping(method = RequestMethod.GET, value = "/all")
    public List<Sample> getSamples() {
        return sampleService.findAll();
    }

    @RequestMapping(method = RequestMethod.GET, value = "/sample")
    public Sample getSample(@RequestParam("id") Long id) {
        return sampleService.findSampleBySampleId(id);
    }
}
