package com.demo.services.impl;

import com.demo.models.Sample;
import com.demo.repository.SampleRepository;
import com.demo.services.SampleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("sampleService")
public class
SampleServiceImpl implements SampleService {

    @Autowired
    private SampleRepository sampleRepository;

    @Override
    public List<Sample> findAll() {
        return sampleRepository.findAll();
    }

    @Override
    public Sample findSampleBySampleId(Long id) {
        return sampleRepository.findSampleBySampleId(id);
    }
}
