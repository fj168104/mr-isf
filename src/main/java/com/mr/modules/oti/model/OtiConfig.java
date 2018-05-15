package com.mr.modules.oti.model;

import com.mr.common.base.model.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class OtiConfig extends BaseEntity {

    /**
     * 传输消息ID
     */
    private String msgId;

    /**
     * 传输消息描述
     */
    private String msgNameDesp;

    /**
     * 消息编码
     */
    private String charset;
    /**
     * 任务状态 0禁用 1启用
     */
    private Integer status;

}