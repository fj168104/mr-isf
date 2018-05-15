package com.mr.modules.sys.mapper;

import com.mr.modules.sys.model.Role;
import com.mr.common.base.mapper.BaseMapper;

/**
 * Created by mr on 2017/2/8.
 */
public interface RoleMapper extends BaseMapper<Role> {
    /**
     * 根据用户ID查询角色对象信息
     * @param userId
     * @return
     */
    Role findByUserId(Long userId);
}
