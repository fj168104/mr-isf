package com.mr.modules.sys.mapper;

import com.mr.common.annotation.DataScope;
import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.sys.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by mr on 2017/1/19.
 */
public interface UserMapper extends BaseMapper<User> {
    /**
     * 根据用户ID查询用户信息
     * @param id
     * @return
     */
    User findById(Long id);

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    User findByUserName(String username);

    /**
     * 数据权限筛选用户集合
     * @param dataScope
     * @param username
     * @param startTime
     * @param endTime
     * @return
     */
    List<User> findListDataFilter(@Param("dataScope") DataScope dataScope, @Param("username") String username, @Param("startTime") String startTime, @Param("endTime") String endTime);
}
