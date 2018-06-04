package com.mr.modules.datamanage.model;

import com.mr.common.base.model.BaseEntity;
import java.util.Date;
import javax.persistence.*;

@Table(name = "mr_crawler_onebank_twomeet_punish_dtl")
public class MrCrawlerOnebankTwomeetPunishDtl extends BaseEntity {
    /*@Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;*/

    /**
     * 业务主键 | punish_no+punish_title+party_institution+punish_date
     */
    private String primaryKey;

    /**
     * 处罚文号=函号 | 地方证监局、深交所、保监会
     */
    private String punishNo;

    /**
     * 标题名称=函件标题 | 地方证监局、深交所、保监会、上交所、深交所、证监会
     */
    private String punishTitle;

    /**
     * 当事人（公司）=处罚对象=机构当事人名称=涉及对象=中介机构名称=处分对象 | 全国中小企业股转系统、地方证监局、保监会、深交所、证监会
     */
    private String partyInstitution;

    /**
     * 当事人（个人）=处罚对象=当事人集合(当事人姓名)=涉及对象=处分对象 | 全国中小企业股转系统、地方证监局、保监会、上交所、深交所
     */
    private String partyPerson;

    /**
     * 当事人集合(当事人身份证号)|保监会
     */
    private String partyPersonId;

    /**
     * 当事人集合(当事人职务) | 保监会
     */
    private String partyPersonTitle;

    /**
     * 当事人集合(当事人住址)-机构所在地（保险公司分公司）|保监会
     */
    private String partyPersonDomi;

    /**
     * 一码通代码（当事人为个人）| 全国中小企业股转系统
     */
    private String unicode;

    /**
     * 处分对象类型|深交所
     */
    private String partyCategory;

    /**
     * 住所地=机构当事人住所|全国中小企业股转系统
     */
    private String domicile;

    /**
     * 法定代表人=机构负责人姓名|全国中小企业股转系统、保监会
     */
    private String legalRepresentative;

    /**
     * 当事人补充情况|全国中小企业股转系统
     */
    private String partySupplement;

    /**
     * 公司全称|深交所、全国中小企业股转系统
     */
    private String companyFullName;

    /**
     * 中介机构类别|深交所
     */
    private String intermediaryCategory;

    /**
     * 公司简称=涉及公司简称|深交所
     */
    private String companyShortName;

    /**
     * 公司代码=涉及公司代码|深交所
     */
    private String companyCode;

    /**
     * 证券代码|上交所
     */
    private String stockCode;

    /**
     * 证券简称|上交所
     */
    private String stockShortName;

    /**
     * 处分类别|深交所
     */
    private String punishCategory;

    /**
     * 涉及债券|深交所
     */
    private String relatedBond;

    /**
     * 处罚结果|全国中小企业股转系统、证监会
     */
    private String punishResult;

    /**
     * 处罚机关=处罚机构|保监会、证监会
     */
    private String punishInstitution;

    /**
     * 处罚日期=处理日期=处分日期|地方证监局、保监会、上交所、深交所、证监会
     */
    private String punishDate;

    /**
     * 整改时限|证监会
     */
    private String remedialLimitTime;

    /**
     * 发布机构|地方证监局、保监会
     */
    private String publisher;

    /**
     * 发布日期=发函日期|地方证监局、保监会
     */
    private String publishDate;

    /**
     * 监管类型|地方证监局
     */
    private String listClassification;

    /**
     * 名单分类|上交所
     */
    private String supervisionType;

    /**
     * 来源（全国中小企业股转系统、地方证监局、保监会、上交所、深交所、证监会）
     */
    private String source;

    /**
     * 来源url
     */
    private String url;

    /**
     * 主题（全国中小企业股转系统-监管公告、行政处罚决定、公司监管、债券监管、交易监管、上市公司处罚与处分记录、中介机构处罚与处分记录
     */
    private String object;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 违规情况=处理事由|全国中小企业股转系统、上交所、证监会
     */
    private String irregularities;

    /**
     * 相关法规=违反条例|全国中小企业股转系统、证监会
     */
    private String relatedLaw;

    /**
     * 处罚结果补充情况|全国中小企业股转系统
     */
    private String punishResultSupplement;

    /**
     * 详情=行政处罚详情=全文|地方证监局、保监会、深交所
     */
    private String details;

    /**
     * 修复时间
     */
    private Date modifyTime;

    /**
     * @return ID
     */
    /*public Long getId() {
        return id;
    }*/

    /**
     * @param id
     */
    /*public void setId(Long id) {
        this.id = id;
    }*/

    /**
     * 获取业务主键 | punish_no+punish_title+party_institution+punish_date
     *
     * @return PRIMARY_KEY - 业务主键 | punish_no+punish_title+party_institution+punish_date
     */
    public String getPrimaryKey() {
        return primaryKey;
    }

    /**
     * 设置业务主键 | punish_no+punish_title+party_institution+punish_date
     *
     * @param primaryKey 业务主键 | punish_no+punish_title+party_institution+punish_date
     */
    public void setPrimaryKey(String primaryKey) {
        this.primaryKey = primaryKey;
    }

    /**
     * 获取处罚文号=函号 | 地方证监局、深交所、保监会
     *
     * @return PUNISH_NO - 处罚文号=函号 | 地方证监局、深交所、保监会
     */
    public String getPunishNo() {
        return punishNo;
    }

    /**
     * 设置处罚文号=函号 | 地方证监局、深交所、保监会
     *
     * @param punishNo 处罚文号=函号 | 地方证监局、深交所、保监会
     */
    public void setPunishNo(String punishNo) {
        this.punishNo = punishNo;
    }

    /**
     * 获取标题名称=函件标题 | 地方证监局、深交所、保监会、上交所、深交所、证监会
     *
     * @return PUNISH_TITLE - 标题名称=函件标题 | 地方证监局、深交所、保监会、上交所、深交所、证监会
     */
    public String getPunishTitle() {
        return punishTitle;
    }

    /**
     * 设置标题名称=函件标题 | 地方证监局、深交所、保监会、上交所、深交所、证监会
     *
     * @param punishTitle 标题名称=函件标题 | 地方证监局、深交所、保监会、上交所、深交所、证监会
     */
    public void setPunishTitle(String punishTitle) {
        this.punishTitle = punishTitle;
    }

    /**
     * 获取当事人（公司）=处罚对象=机构当事人名称=涉及对象=中介机构名称=处分对象 | 全国中小企业股转系统、地方证监局、保监会、深交所、证监会
     *
     * @return PARTY_INSTITUTION - 当事人（公司）=处罚对象=机构当事人名称=涉及对象=中介机构名称=处分对象 | 全国中小企业股转系统、地方证监局、保监会、深交所、证监会
     */
    public String getPartyInstitution() {
        return partyInstitution;
    }

    /**
     * 设置当事人（公司）=处罚对象=机构当事人名称=涉及对象=中介机构名称=处分对象 | 全国中小企业股转系统、地方证监局、保监会、深交所、证监会
     *
     * @param partyInstitution 当事人（公司）=处罚对象=机构当事人名称=涉及对象=中介机构名称=处分对象 | 全国中小企业股转系统、地方证监局、保监会、深交所、证监会
     */
    public void setPartyInstitution(String partyInstitution) {
        this.partyInstitution = partyInstitution;
    }

    /**
     * 获取当事人（个人）=处罚对象=当事人集合(当事人姓名)=涉及对象=处分对象 | 全国中小企业股转系统、地方证监局、保监会、上交所、深交所
     *
     * @return PARTY_PERSON - 当事人（个人）=处罚对象=当事人集合(当事人姓名)=涉及对象=处分对象 | 全国中小企业股转系统、地方证监局、保监会、上交所、深交所
     */
    public String getPartyPerson() {
        return partyPerson;
    }

    /**
     * 设置当事人（个人）=处罚对象=当事人集合(当事人姓名)=涉及对象=处分对象 | 全国中小企业股转系统、地方证监局、保监会、上交所、深交所
     *
     * @param partyPerson 当事人（个人）=处罚对象=当事人集合(当事人姓名)=涉及对象=处分对象 | 全国中小企业股转系统、地方证监局、保监会、上交所、深交所
     */
    public void setPartyPerson(String partyPerson) {
        this.partyPerson = partyPerson;
    }

    /**
     * 获取当事人集合(当事人身份证号)|保监会
     *
     * @return PARTY_PERSON_ID - 当事人集合(当事人身份证号)|保监会
     */
    public String getPartyPersonId() {
        return partyPersonId;
    }

    /**
     * 设置当事人集合(当事人身份证号)|保监会
     *
     * @param partyPersonId 当事人集合(当事人身份证号)|保监会
     */
    public void setPartyPersonId(String partyPersonId) {
        this.partyPersonId = partyPersonId;
    }

    /**
     * 获取当事人集合(当事人职务) | 保监会
     *
     * @return PARTY_PERSON_TITLE - 当事人集合(当事人职务) | 保监会
     */
    public String getPartyPersonTitle() {
        return partyPersonTitle;
    }

    /**
     * 设置当事人集合(当事人职务) | 保监会
     *
     * @param partyPersonTitle 当事人集合(当事人职务) | 保监会
     */
    public void setPartyPersonTitle(String partyPersonTitle) {
        this.partyPersonTitle = partyPersonTitle;
    }

    /**
     * 获取当事人集合(当事人住址)-机构所在地（保险公司分公司）|保监会
     *
     * @return PARTY_PERSON_DOMI - 当事人集合(当事人住址)-机构所在地（保险公司分公司）|保监会
     */
    public String getPartyPersonDomi() {
        return partyPersonDomi;
    }

    /**
     * 设置当事人集合(当事人住址)-机构所在地（保险公司分公司）|保监会
     *
     * @param partyPersonDomi 当事人集合(当事人住址)-机构所在地（保险公司分公司）|保监会
     */
    public void setPartyPersonDomi(String partyPersonDomi) {
        this.partyPersonDomi = partyPersonDomi;
    }

    /**
     * 获取一码通代码（当事人为个人）| 全国中小企业股转系统
     *
     * @return UNICODE - 一码通代码（当事人为个人）| 全国中小企业股转系统
     */
    public String getUnicode() {
        return unicode;
    }

    /**
     * 设置一码通代码（当事人为个人）| 全国中小企业股转系统
     *
     * @param unicode 一码通代码（当事人为个人）| 全国中小企业股转系统
     */
    public void setUnicode(String unicode) {
        this.unicode = unicode;
    }

    /**
     * 获取处分对象类型|深交所
     *
     * @return PARTY_CATEGORY - 处分对象类型|深交所
     */
    public String getPartyCategory() {
        return partyCategory;
    }

    /**
     * 设置处分对象类型|深交所
     *
     * @param partyCategory 处分对象类型|深交所
     */
    public void setPartyCategory(String partyCategory) {
        this.partyCategory = partyCategory;
    }

    /**
     * 获取住所地=机构当事人住所|全国中小企业股转系统
     *
     * @return DOMICILE - 住所地=机构当事人住所|全国中小企业股转系统
     */
    public String getDomicile() {
        return domicile;
    }

    /**
     * 设置住所地=机构当事人住所|全国中小企业股转系统
     *
     * @param domicile 住所地=机构当事人住所|全国中小企业股转系统
     */
    public void setDomicile(String domicile) {
        this.domicile = domicile;
    }

    /**
     * 获取法定代表人=机构负责人姓名|全国中小企业股转系统、保监会
     *
     * @return LEGAL_REPRESENTATIVE - 法定代表人=机构负责人姓名|全国中小企业股转系统、保监会
     */
    public String getLegalRepresentative() {
        return legalRepresentative;
    }

    /**
     * 设置法定代表人=机构负责人姓名|全国中小企业股转系统、保监会
     *
     * @param legalRepresentative 法定代表人=机构负责人姓名|全国中小企业股转系统、保监会
     */
    public void setLegalRepresentative(String legalRepresentative) {
        this.legalRepresentative = legalRepresentative;
    }

    /**
     * 获取当事人补充情况|全国中小企业股转系统
     *
     * @return PARTY_SUPPLEMENT - 当事人补充情况|全国中小企业股转系统
     */
    public String getPartySupplement() {
        return partySupplement;
    }

    /**
     * 设置当事人补充情况|全国中小企业股转系统
     *
     * @param partySupplement 当事人补充情况|全国中小企业股转系统
     */
    public void setPartySupplement(String partySupplement) {
        this.partySupplement = partySupplement;
    }

    /**
     * 获取公司全称|深交所、全国中小企业股转系统
     *
     * @return COMPANY_FULL_NAME - 公司全称|深交所、全国中小企业股转系统
     */
    public String getCompanyFullName() {
        return companyFullName;
    }

    /**
     * 设置公司全称|深交所、全国中小企业股转系统
     *
     * @param companyFullName 公司全称|深交所、全国中小企业股转系统
     */
    public void setCompanyFullName(String companyFullName) {
        this.companyFullName = companyFullName;
    }

    /**
     * 获取中介机构类别|深交所
     *
     * @return INTERMEDIARY_CATEGORY - 中介机构类别|深交所
     */
    public String getIntermediaryCategory() {
        return intermediaryCategory;
    }

    /**
     * 设置中介机构类别|深交所
     *
     * @param intermediaryCategory 中介机构类别|深交所
     */
    public void setIntermediaryCategory(String intermediaryCategory) {
        this.intermediaryCategory = intermediaryCategory;
    }

    /**
     * 获取公司简称=涉及公司简称|深交所
     *
     * @return COMPANY_SHORT_NAME - 公司简称=涉及公司简称|深交所
     */
    public String getCompanyShortName() {
        return companyShortName;
    }

    /**
     * 设置公司简称=涉及公司简称|深交所
     *
     * @param companyShortName 公司简称=涉及公司简称|深交所
     */
    public void setCompanyShortName(String companyShortName) {
        this.companyShortName = companyShortName;
    }

    /**
     * 获取公司代码=涉及公司代码|深交所
     *
     * @return COMPANY_CODE - 公司代码=涉及公司代码|深交所
     */
    public String getCompanyCode() {
        return companyCode;
    }

    /**
     * 设置公司代码=涉及公司代码|深交所
     *
     * @param companyCode 公司代码=涉及公司代码|深交所
     */
    public void setCompanyCode(String companyCode) {
        this.companyCode = companyCode;
    }

    /**
     * 获取证券代码|上交所
     *
     * @return STOCK_CODE - 证券代码|上交所
     */
    public String getStockCode() {
        return stockCode;
    }

    /**
     * 设置证券代码|上交所
     *
     * @param stockCode 证券代码|上交所
     */
    public void setStockCode(String stockCode) {
        this.stockCode = stockCode;
    }

    /**
     * 获取证券简称|上交所
     *
     * @return STOCK_SHORT_NAME - 证券简称|上交所
     */
    public String getStockShortName() {
        return stockShortName;
    }

    /**
     * 设置证券简称|上交所
     *
     * @param stockShortName 证券简称|上交所
     */
    public void setStockShortName(String stockShortName) {
        this.stockShortName = stockShortName;
    }

    /**
     * 获取处分类别|深交所
     *
     * @return PUNISH_CATEGORY - 处分类别|深交所
     */
    public String getPunishCategory() {
        return punishCategory;
    }

    /**
     * 设置处分类别|深交所
     *
     * @param punishCategory 处分类别|深交所
     */
    public void setPunishCategory(String punishCategory) {
        this.punishCategory = punishCategory;
    }

    /**
     * 获取涉及债券|深交所
     *
     * @return RELATED_BOND - 涉及债券|深交所
     */
    public String getRelatedBond() {
        return relatedBond;
    }

    /**
     * 设置涉及债券|深交所
     *
     * @param relatedBond 涉及债券|深交所
     */
    public void setRelatedBond(String relatedBond) {
        this.relatedBond = relatedBond;
    }

    /**
     * 获取处罚结果|全国中小企业股转系统、证监会
     *
     * @return PUNISH_RESULT - 处罚结果|全国中小企业股转系统、证监会
     */
    public String getPunishResult() {
        return punishResult;
    }

    /**
     * 设置处罚结果|全国中小企业股转系统、证监会
     *
     * @param punishResult 处罚结果|全国中小企业股转系统、证监会
     */
    public void setPunishResult(String punishResult) {
        this.punishResult = punishResult;
    }

    /**
     * 获取处罚机关=处罚机构|保监会、证监会
     *
     * @return PUNISH_INSTITUTION - 处罚机关=处罚机构|保监会、证监会
     */
    public String getPunishInstitution() {
        return punishInstitution;
    }

    /**
     * 设置处罚机关=处罚机构|保监会、证监会
     *
     * @param punishInstitution 处罚机关=处罚机构|保监会、证监会
     */
    public void setPunishInstitution(String punishInstitution) {
        this.punishInstitution = punishInstitution;
    }

    /**
     * 获取处罚日期=处理日期=处分日期|地方证监局、保监会、上交所、深交所、证监会
     *
     * @return PUNISH_DATE - 处罚日期=处理日期=处分日期|地方证监局、保监会、上交所、深交所、证监会
     */
    public String getPunishDate() {
        return punishDate;
    }

    /**
     * 设置处罚日期=处理日期=处分日期|地方证监局、保监会、上交所、深交所、证监会
     *
     * @param punishDate 处罚日期=处理日期=处分日期|地方证监局、保监会、上交所、深交所、证监会
     */
    public void setPunishDate(String punishDate) {
        this.punishDate = punishDate;
    }

    /**
     * 获取整改时限|证监会
     *
     * @return REMEDIAL_LIMIT_TIME - 整改时限|证监会
     */
    public String getRemedialLimitTime() {
        return remedialLimitTime;
    }

    /**
     * 设置整改时限|证监会
     *
     * @param remedialLimitTime 整改时限|证监会
     */
    public void setRemedialLimitTime(String remedialLimitTime) {
        this.remedialLimitTime = remedialLimitTime;
    }

    /**
     * 获取发布机构|地方证监局、保监会
     *
     * @return PUBLISHER - 发布机构|地方证监局、保监会
     */
    public String getPublisher() {
        return publisher;
    }

    /**
     * 设置发布机构|地方证监局、保监会
     *
     * @param publisher 发布机构|地方证监局、保监会
     */
    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    /**
     * 获取发布日期=发函日期|地方证监局、保监会
     *
     * @return PUBLISH_DATE - 发布日期=发函日期|地方证监局、保监会
     */
    public String getPublishDate() {
        return publishDate;
    }

    /**
     * 设置发布日期=发函日期|地方证监局、保监会
     *
     * @param publishDate 发布日期=发函日期|地方证监局、保监会
     */
    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }

    /**
     * 获取监管类型|地方证监局
     *
     * @return LIST_CLASSIFICATION - 监管类型|地方证监局
     */
    public String getListClassification() {
        return listClassification;
    }

    /**
     * 设置监管类型|地方证监局
     *
     * @param listClassification 监管类型|地方证监局
     */
    public void setListClassification(String listClassification) {
        this.listClassification = listClassification;
    }

    /**
     * 获取名单分类|上交所
     *
     * @return SUPERVISION_TYPE - 名单分类|上交所
     */
    public String getSupervisionType() {
        return supervisionType;
    }

    /**
     * 设置名单分类|上交所
     *
     * @param supervisionType 名单分类|上交所
     */
    public void setSupervisionType(String supervisionType) {
        this.supervisionType = supervisionType;
    }

    /**
     * 获取来源（全国中小企业股转系统、地方证监局、保监会、上交所、深交所、证监会）
     *
     * @return SOURCE - 来源（全国中小企业股转系统、地方证监局、保监会、上交所、深交所、证监会）
     */
    public String getSource() {
        return source;
    }

    /**
     * 设置来源（全国中小企业股转系统、地方证监局、保监会、上交所、深交所、证监会）
     *
     * @param source 来源（全国中小企业股转系统、地方证监局、保监会、上交所、深交所、证监会）
     */
    public void setSource(String source) {
        this.source = source;
    }

    /**
     * 获取来源url
     *
     * @return URL - 来源url
     */
    public String getUrl() {
        return url;
    }

    /**
     * 设置来源url
     *
     * @param url 来源url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 获取主题（全国中小企业股转系统-监管公告、行政处罚决定、公司监管、债券监管、交易监管、上市公司处罚与处分记录、中介机构处罚与处分记录
     *
     * @return OBJECT - 主题（全国中小企业股转系统-监管公告、行政处罚决定、公司监管、债券监管、交易监管、上市公司处罚与处分记录、中介机构处罚与处分记录
     */
    public String getObject() {
        return object;
    }

    /**
     * 设置主题（全国中小企业股转系统-监管公告、行政处罚决定、公司监管、债券监管、交易监管、上市公司处罚与处分记录、中介机构处罚与处分记录
     *
     * @param object 主题（全国中小企业股转系统-监管公告、行政处罚决定、公司监管、债券监管、交易监管、上市公司处罚与处分记录、中介机构处罚与处分记录
     */
    public void setObject(String object) {
        this.object = object;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_TIME - 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 设置创建时间
     *
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 获取更新时间
     *
     * @return UPDATE_TIME - 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 设置更新时间
     *
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 获取违规情况=处理事由|全国中小企业股转系统、上交所、证监会
     *
     * @return IRREGULARITIES - 违规情况=处理事由|全国中小企业股转系统、上交所、证监会
     */
    public String getIrregularities() {
        return irregularities;
    }

    /**
     * 设置违规情况=处理事由|全国中小企业股转系统、上交所、证监会
     *
     * @param irregularities 违规情况=处理事由|全国中小企业股转系统、上交所、证监会
     */
    public void setIrregularities(String irregularities) {
        this.irregularities = irregularities;
    }

    /**
     * 获取相关法规=违反条例|全国中小企业股转系统、证监会
     *
     * @return RELATED_LAW - 相关法规=违反条例|全国中小企业股转系统、证监会
     */
    public String getRelatedLaw() {
        return relatedLaw;
    }

    /**
     * 设置相关法规=违反条例|全国中小企业股转系统、证监会
     *
     * @param relatedLaw 相关法规=违反条例|全国中小企业股转系统、证监会
     */
    public void setRelatedLaw(String relatedLaw) {
        this.relatedLaw = relatedLaw;
    }

    /**
     * 获取处罚结果补充情况|全国中小企业股转系统
     *
     * @return PUNISH_RESULT_SUPPLEMENT - 处罚结果补充情况|全国中小企业股转系统
     */
    public String getPunishResultSupplement() {
        return punishResultSupplement;
    }

    /**
     * 设置处罚结果补充情况|全国中小企业股转系统
     *
     * @param punishResultSupplement 处罚结果补充情况|全国中小企业股转系统
     */
    public void setPunishResultSupplement(String punishResultSupplement) {
        this.punishResultSupplement = punishResultSupplement;
    }

    /**
     * 获取详情=行政处罚详情=全文|地方证监局、保监会、深交所
     *
     * @return DETAILS - 详情=行政处罚详情=全文|地方证监局、保监会、深交所
     */
    public String getDetails() {
        return details;
    }

    /**
     * 设置详情=行政处罚详情=全文|地方证监局、保监会、深交所
     *
     * @param details 详情=行政处罚详情=全文|地方证监局、保监会、深交所
     */
    public void setDetails(String details) {
        this.details = details;
    }

    public Date getModifyTime(){return modifyTime;}

    public void setModifyTime(){ this.modifyTime = modifyTime;}
}