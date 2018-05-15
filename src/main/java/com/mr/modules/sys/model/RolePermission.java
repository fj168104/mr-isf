package com.mr.modules.sys.model;

import com.mr.common.base.model.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 角色权限中间表
 * @author cuiP
 * Created by mr on 2017/2/13.
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class RolePermission extends BaseEntity {
    private Long roleId;
    private Long permissionId;
}
