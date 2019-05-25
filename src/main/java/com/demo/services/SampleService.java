package com.demo.services;

import com.demo.models.Sample;

import java.util.List;

public interface SampleService {
    List<Sample> findAll();
    Sample findSampleBySampleId(Long id);
}
