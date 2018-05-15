package com.mr.modules.sys.mapper;

import com.mr.modules.sys.model.Permission;
import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * Created by mr on 2017/2/8.
 */
public interface PermissionMapper extends BaseMapper<Permission> {
    /**
     * 根据用户ID查询该用户所拥有的权限列表
     * @param UserId
     * @return
     */
    List<Permission> findListPermissionByUserId(Long userId);

    /**
     * 根据用户ID查询用户菜单列表
     * @param UserId
     * @return
     */
    List<Permission> findMenuListByUserId(Long userId);

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList();
}
