package com.mr.modules.biz.model;

import com.mr.common.base.model.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

//@Table(name = "biz_record")
@Data
@EqualsAndHashCode(callSuper = true)
public class BizRecord extends BaseEntity {

    /**
     * 所属应用
     */
//    @Column(name = "app_name")
    private String appName;

    /**
     * 协议类型，0为rest，1为dubbo
     */
//    @Column(name = "call_type")
    private Integer callType;

    /**
     * 请求方法名称(全路径)
     */
//    @Column(name = "method_name")
    private String methodName;

    /**
     * 请求方式(GET,POST)
     */
//    @Column(name = "request_method")
    private String requestMethod;

    /**
     * 请求参数
     */
//    @Column(name = "request_params")
    private String requestParams;

    /**
     * 访问者IP
     */
//    @Column(name = "request_ip")
    private String requestIp;

    /**
     * 请求URI
     */
//    @Column(name = "request_uri")
    private String requestUri;

    /**
     * 请求耗时
     */
//    @Column(name = "time_consuming")
    private Long timeConsuming;

    /**
     * 调用结果，0为success，1为fail
     */
//    @Column(name = "call_result")
    private Integer callResult;

}