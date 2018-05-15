package com.mr.modules.oti.service;

import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.BaseService;
import com.mr.modules.oti.model.OtiFieldLibrary;
import com.mr.modules.sys.vo.TreeNode;

import java.util.List;

/**
 * Created by fengj on 2018/4/30.
 */
public interface OtiFieldLibraryService extends BaseService<OtiFieldLibrary> {
    /**
     * 分页查询报文字段详细配置列表
     *
     * @param pageNum  当前页面
     * @param pageSize 每页显示条数
     * @param msgId     权限名称
     * @return
     */
    PageInfo<OtiFieldLibrary> findPage(Integer pageNum, Integer pageSize, String msgId);

    /**
     * 根据资源类型查询报文字段详细配置列表
     * @param type
     * @param msgId
     * @return
     */
    List<OtiFieldLibrary> findListByType(int type, String msgId);

    /**
     * 返回树列表
     * @return
     */
    List<TreeNode> findTreeList(String msgId);

    /**
     * 根据字段ID删除字段信息并级联删除相关联的array和object信息
     * @param msgId
     * @return
     */
    Boolean deleteFieldAndArrayOrObject(Long msgId);

    public List<OtiFieldLibrary> findListByMsgId(String msgId);

}
