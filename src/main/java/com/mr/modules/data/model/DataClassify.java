package com.mr.modules.data.model;

import javax.persistence.Column;
import javax.persistence.Table;

import com.mr.common.base.model.BaseEntity;

@Table(name = "isf_data_classify")
public class DataClassify extends BaseEntity {
    /**
     * 分类名称
     */
    private String name;

    /**
     * 父分类ID,ID=0时，代表的是一级的类目
     */
    @Column(name = "parent_id")
    private Long parentId;

    /**
     * 父分类的名称
     */
    @Column(name = "parent_name")
    private String parentName;

    /**
     * 排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    private Integer sort;

    /**
     * 该分类是否为父类目，1为true，0为false
     */
    @Column(name = "is_parent")
    private Boolean isParent;

    /**
     * 访问页面
     */
    private String action;

    /**
     * 获取分类名称
     *
     * @return name - 分类名称
     */
    public String getName() {
        return name;
    }

    /**
     * 设置分类名称
     *
     * @param name 分类名称
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取父分类ID,ID=0时，代表的是一级的类目
     *
     * @return parent_id - 父分类ID,ID=0时，代表的是一级的类目
     */
    public Long getParentId() {
        return parentId;
    }

    /**
     * 设置父分类ID,ID=0时，代表的是一级的类目
     *
     * @param parentId 父分类ID,ID=0时，代表的是一级的类目
     */
    public void setParentId(Long parentId) {
        this.parentId = parentId;
    }

    /**
     * 获取父分类的名称
     *
     * @return parent_name - 父分类的名称
     */
    public String getParentName() {
        return parentName;
    }

    /**
     * 设置父分类的名称
     *
     * @param parentName 父分类的名称
     */
    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    /**
     * 获取排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     *
     * @return sort - 排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    public Integer getSort() {
        return sort;
    }

    /**
     * 设置排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     *
     * @param sort 排列序号,表示同级分类的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数
     */
    public void setSort(Integer sort) {
        this.sort = sort;
    }

    /**
     * 获取该分类是否为父类目，1为true，0为false
     *
     * @return is_parent - 该分类是否为父类目，1为true，0为false
     */
    public Boolean getIsParent() {
        return isParent;
    }

    /**
     * 设置该分类是否为父类目，1为true，0为false
     *
     * @param isParent 该分类是否为父类目，1为true，0为false
     */
    public void setIsParent(Boolean isParent) {
        this.isParent = isParent;
    }

    /**
     * 获取访问页面
     *
     * @return action - 访问页面
     */
    public String getAction() {
        return action;
    }

    /**
     * 设置访问页面
     *
     * @param action 访问页面
     */
    public void setAction(String action) {
        this.action = action;
    }
}