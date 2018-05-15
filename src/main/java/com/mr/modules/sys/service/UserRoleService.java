package com.mr.modules.sys.service;

import com.mr.common.base.service.BaseService;
import com.mr.modules.sys.model.UserRole;

/**
 * @author cuiP
 * Created by mr on 2017/2/16.
 */
public interface UserRoleService extends BaseService<UserRole> {
    /**
     * 根据用户ID和角色ID查询用户和角色绑定信息
     * @param userId
     * @param roleId
     * @return
     */
    UserRole findByUserIdAndRoleId(Long userId, Long roleId);
}
