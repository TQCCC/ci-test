package com.example.jenkinstest.model.vo;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * Created by tangqingchang at 15:05 on 2017/9/21
 */
@Data
@ToString(callSuper = true)
public class ResponseVO implements Serializable {

    private static final long serialVersionUID = -1371496224124135871L;

    private Object            result;
    private String            resultCode       = "";
    private String            message          = "";
}
