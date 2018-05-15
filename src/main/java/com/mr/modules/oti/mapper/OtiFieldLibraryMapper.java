package com.mr.modules.oti.mapper;

import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.oti.model.OtiFieldLibrary;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * Created by JK on 2017/2/8.
 */
public interface OtiFieldLibraryMapper extends BaseMapper<OtiFieldLibrary> {
    /**
     * 根据消息ID查询字段配置详情
     * @param msgId
     * @return
     */
    List<OtiFieldLibrary> findFieldLibraryByMsgId(String msgId);

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeListByMsgId(String msgId);
}
