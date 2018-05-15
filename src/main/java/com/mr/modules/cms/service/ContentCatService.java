package com.mr.modules.cms.service;

import com.mr.common.base.service.BaseService;
import com.mr.modules.cms.model.ContentCat;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * @author cuiP
 * Created by mr on 2017/4/19.
 */
public interface ContentCatService extends BaseService<ContentCat> {
    /**
     * 查询新闻分类
     * @return
     */
    List<ContentCat> findListNewsCat();

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList();
}
