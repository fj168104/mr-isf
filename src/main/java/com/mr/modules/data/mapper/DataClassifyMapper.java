package com.mr.modules.data.mapper;

import java.util.List;

import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.data.model.DataClassify;
import com.mr.modules.sys.model.Permission;
import com.mr.modules.sys.vo.TreeNode;

/**
 * @author pxu 2018年5月18日
 */
public interface DataClassifyMapper extends BaseMapper<DataClassify> {
    /**
     * 根据用户ID查询该用户所拥有的权限列表
     * @param UserId
     * @return
     */
    List<DataClassify> findListPermissionByUserId(Long userId);

    /**
     * 根据用户ID查询用户菜单列表
     * @param UserId
     * @return
     */
    List<DataClassify> findMenuListByUserId(Long userId);

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList();
}
