package com.mr.modules.oti.model;

import com.mr.common.base.model.BaseEntity;
import lombok.Data;

@Data
public class OtiFieldLibrary extends BaseEntity {

    /**
     * 传输消息ID
     */
    private String msgId;

    /**
     * 字段名
     */
    private String fieldTag;

    /**
     * 字段描述
     */
    private String fieldDesp;

    /**
     * 1: string  2:int  3:double  4:object  5:array
     */
    private Integer dataType;

    /**
     * 基本类型使用， string：超过长度直接截断   int:超过长度抛错  double(如:18,2)：按照要求格式化
     */
    private String fieldLength;

    /**
     * 基本类型的默认值，根据不同类自动转化
     */
    private String fieldDefault;

    /**
     * 针对data_type=5,从数据库映射字段, 这里写出查询的SQL
     */
    private String tableField;

    /**
     * 父节点id
     */
    private Long parentId;

    /**
     * 配置是否必填，1：必填，0非必填
     */
    private Boolean isRequire = false;

    /**
     * 排序号
     */
    private Long sort;
}