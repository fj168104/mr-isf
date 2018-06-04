package com.mr.modules.datamanage.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.datamanage.model.MrCrawlerOnebankTwomeetPunishDtl;
import com.mr.modules.datamanage.service.DataManageService;
import com.mr.modules.log.model.Log;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.StrUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @author xuzj
 * Created by JK on 2017/4/27.
 */
@Transactional
@Service
public class DataManageServiceImpl extends BaseServiceImpl<MrCrawlerOnebankTwomeetPunishDtl> implements DataManageService {

    @Transactional(readOnly = true)
    @Override
    public PageInfo<MrCrawlerOnebankTwomeetPunishDtl> findPage(Integer pageNum,Integer pageSize, String punishInstitution, String publishDate, String punishDate) {
        Example example = new Example(MrCrawlerOnebankTwomeetPunishDtl.class);
        Example.Criteria criteria = example.createCriteria();
        if(StringUtils.isNotEmpty(punishInstitution)){
            criteria.andLike("punishInstitution", "%"+punishInstitution+"%");
        }if(StrUtil.isNotEmpty(publishDate)){
            criteria.andGreaterThanOrEqualTo("createTime", DateUtil.beginOfDay(DateUtil.parse(publishDate)));
        }if(StrUtil.isNotEmpty(punishDate)){
            criteria.andLessThanOrEqualTo("createTime", DateUtil.endOfDay(DateUtil.parse(punishDate)));
        }

        //倒序
        example.orderBy("createTime").desc();

        //分页
        PageHelper.startPage(pageNum,pageSize);
        List<MrCrawlerOnebankTwomeetPunishDtl> logList = this.selectByExample(example);

        return new PageInfo<MrCrawlerOnebankTwomeetPunishDtl>(logList);
    }
}
