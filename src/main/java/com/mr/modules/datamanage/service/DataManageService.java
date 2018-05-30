package com.mr.modules.datamanage.service;

import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.BaseService;
import com.mr.modules.datamanage.model.MrCrawlerOnebankTwomeetPunishDtl;
import com.mr.modules.log.model.Log;

/**
 * @author xuzj
 * Created by JK on 2018/5/27.
 */
public interface DataManageService extends BaseService<MrCrawlerOnebankTwomeetPunishDtl> {

    /**
     * 分页查询处罚列表
     * @param pageNum
     * @param pageSize
     * @param username
     * @param startTime
     * @param endTime
     * @return
     */
    PageInfo<MrCrawlerOnebankTwomeetPunishDtl> findPage(Integer pageNum, Integer pageSize, String username, String startTime, String endTime);
}
