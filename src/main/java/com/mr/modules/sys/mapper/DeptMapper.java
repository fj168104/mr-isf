package com.mr.modules.sys.mapper;

import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.sys.model.Dept;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * @package: com.mr.modules.sys.mapper
 * @description:
 * @author: cuiP
 * @date: 2018/1/30 14:57
 * @version: V1.0.0
 */
public interface DeptMapper extends BaseMapper<Dept>{

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList();
}
