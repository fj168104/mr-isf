package com.mr.modules.cms.mapper;

import com.mr.modules.cms.model.ContentCat;
import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * @author cuiP
 * Created by mr on 2017/4/19.
 */
public interface ContentCatMapper extends BaseMapper<ContentCat> {
    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList();
}
