package com.demo.utils;

import com.demo.constants.Constant;
import org.junit.Test;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import static org.junit.Assert.*;

public class DateUtilTest {

    @Test
    public void toHHmm() {
        String startTime = "09:30";
        String expectedResult = "09:30";
        assertEquals(expectedResult, DateUtil.toHHmm(LocalTime.parse(startTime)));
    }

    @Test
    public void toYYYYMMdd() {
        String startTime = "2017-01-01";
        String expectedResult = "2017-01-01";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(Constant.YYYY_MM_DD);
        assertEquals(expectedResult, DateUtil.toYYYYMMdd(LocalDate.parse(startTime, formatter)));
    }

    @Test
    public void toYYYYMMddMMdd() {
        String startTime = "2017-01-01 07:30";
        String expectedResult = "2017-01-01 07:30";
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern(Constant.YYYY_MM_DD_HH_MM);
        assertEquals(expectedResult, DateUtil.toYYYYMMddHHmm(LocalDateTime.parse(startTime, formatter)));
    }
}