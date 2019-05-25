package com.demo.utils;

import com.demo.constants.Constant;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

/**
 * DateUtil is a until for date which provide api to handle date time in this project
 */
public class DateUtil {

    /**
     * convert from local time to string with format HH:mm
     *
     * @param localTime
     * @return String HH:mm
     */
    public static String toHHmm(LocalTime localTime) {
        if (null != localTime) {
            return localTime.format(DateTimeFormatter.ofPattern(Constant.HH_MM));
        }
        return "";
    }

    /**
     * convert from local date to string with format yyyy-MM-dd
     *
     * @param localDate
     * @return String yyyy-MM-dd
     */
    public static String toYYYYMMdd(LocalDate localDate) {
        if (null != localDate) {
            return localDate.format(DateTimeFormatter.ofPattern(Constant.YYYY_MM_DD));
        }
        return "";
    }

    /**
     * convert from local date time to string with format HH:mm
     *
     * @param localDateTime
     * @return String yyyy-MM-dd HH:mm
     */
    public static String toYYYYMMddHHmm(LocalDateTime localDateTime) {
        if (null != localDateTime) {
            return localDateTime.format(DateTimeFormatter.ofPattern(Constant.YYYY_MM_DD_HH_MM));
        }
        return "";
    }

}
