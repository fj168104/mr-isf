package com.mr.modules.job.mapper;

import com.mr.modules.job.model.ScheduleJob;
import com.mr.common.base.mapper.BaseMapper;

import java.util.List;

/**
 * @author cuiP
 * Created by mr on 2017/5/4.
 */
public interface ScheduleJobMapper extends BaseMapper<ScheduleJob> {
    /**
     * 注:通用mapper 不支持@PostConstruct
     * 查询所有任务
     * @return
     */
    List<ScheduleJob> findList();
}
