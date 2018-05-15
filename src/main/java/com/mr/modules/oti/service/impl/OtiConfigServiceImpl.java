package com.mr.modules.oti.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Lists;
import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.oti.mapper.OtiFieldLibraryMapper;
import com.mr.modules.oti.model.OtiConfig;
import com.mr.modules.oti.mapper.OtiConfigMapper;
import com.mr.modules.oti.model.OtiFieldLibrary;
import com.mr.modules.oti.service.OtiConfigService;
import com.xiaoleilu.hutool.io.FileUtil;
import com.xiaoleilu.hutool.io.IoUtil;
import com.xiaoleilu.hutool.util.StrUtil;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;
import org.dom4j.Document;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import java.io.*;
import java.util.*;

/**
 * Created by feng on 18-3-3
 */

@Transactional
@Service
@Slf4j
public class OtiConfigServiceImpl extends BaseServiceImpl<OtiConfig> implements OtiConfigService {

	@Autowired
	private OtiConfigMapper otiConfigMapper;
	@Autowired
	private OtiFieldLibraryMapper otiFieldLibraryMapper;


	@Override
	public PageInfo<OtiConfig> findPage(Integer pageNum, Integer pageSize, String msgId) throws Exception {
		Example example = new Example(OtiConfig.class);
		Example.Criteria criteria = example.createCriteria();
		if (StringUtils.isNotEmpty(msgId)) {
			criteria.andLike("msgId", "%" + msgId + "%");
		}

		//倒序
		example.orderBy("createTime").desc();

		//分页
		PageHelper.startPage(pageNum, pageSize);
		List<OtiConfig> otiConfigList = this.selectByExample(example);

		return new PageInfo<OtiConfig>(otiConfigList);
	}


	@Override
	public OtiConfig findByMsgId(String msgId) throws Exception {
		if (StrUtil.isEmpty(msgId)) return null;
		return otiConfigMapper.findByMsgId(msgId);
	}

	@Override
	public Boolean saveOtiConfig(OtiConfig otiConfig) throws Exception {
		otiConfig.setStatus(1);
		otiConfig.setCreateTime(new Date());
		otiConfig.setModifyTime(otiConfig.getCreateTime());
		return otiConfigMapper.insert(otiConfig) > 0 ? true : false;
	}

	@Override
	public Boolean updateOtiConfig(OtiConfig otiConfig) throws Exception {
		otiConfig.setModifyTime(new Date());
		return otiConfigMapper.updateByPrimaryKey(otiConfig) > 0 ? true : false;
	}

	@Override
	public int deleteCascadeByIds(List<Object> ids) {

		//删除字段配置
		for (Object id : ids) {
			OtiConfig otiConfig = findById((long) id);
			String msgId = otiConfig.getMsgId();
			Example example = new Example(OtiFieldLibrary.class);
			example.createCriteria().andEqualTo("msgId", msgId);
			otiFieldLibraryMapper.deleteByExample(example);
		}
		//删除配置
		return this.deleteByCondition(OtiConfig.class, "id", ids);
	}

	@Override
	public Object createXmlConfig(List<Object> ids, Class clazz) {
		String encoding = "UTF-8";
		Document document = DocumentHelper.createDocument();

		Element root = document.addElement("AppInstance");
		Element messageList = root.addElement("MessageList");
		for (Object id : ids) {
			if (StrUtil.isEmpty(String.valueOf(id))) continue;
			OtiConfig otiConfig = this.findById(Long.parseLong(String.valueOf(id)));
			if (Objects.isNull(otiConfig)) continue;
			Element message = messageList.addElement("Message")
					.addAttribute("Id", otiConfig.getMsgId())
					.addAttribute("Description", otiConfig.getMsgNameDesp())
					.addAttribute("CharSet", otiConfig.getCharset());
			buildMessage(message, otiConfig.getMsgId(), null);

		}
		return writeDocument(document, encoding, clazz);
	}

	private void buildMessage(Element message, String msgId, Long parentId) {
		List<OtiFieldLibrary> otiFieldLibraryList = otiFieldLibraryMapper.findFieldLibraryByMsgId(msgId);
		//取出parentId下的节点
		List<OtiFieldLibrary> otiFieldLibrarys = Lists.newArrayList();
		for (OtiFieldLibrary otiFieldLibrary : otiFieldLibraryList) {
			if (Objects.isNull(parentId) &&
					Objects.isNull(otiFieldLibrary.getParentId())) {
				otiFieldLibrarys.add(otiFieldLibrary);
			} else if (!Objects.isNull(parentId)
					&& !Objects.isNull(otiFieldLibrary.getParentId())
					&& Objects.equals(parentId, otiFieldLibrary.getParentId())) {
				otiFieldLibrarys.add(otiFieldLibrary);
			}
		}

		for (OtiFieldLibrary otiFieldLibrary : otiFieldLibrarys) {
			Element field = message.addElement("Field")
					.addAttribute("FieldTag", otiFieldLibrary.getFieldTag())
					.addAttribute("Description", otiFieldLibrary.getFieldDesp())
					.addAttribute("DataType", DataType.getName(otiFieldLibrary.getDataType()));
			if (DataType.ARRAY.code == otiFieldLibrary.getDataType()) {
				field.addAttribute("TableField", otiFieldLibrary.getTableField());
				buildMessage(field.addElement("Message"), msgId, otiFieldLibrary.getId());
			} else if (DataType.OBJECT.code == otiFieldLibrary.getDataType()) {
				buildMessage(field.addElement("Message"), msgId, otiFieldLibrary.getId());
			} else {
				field.addAttribute("Length", otiFieldLibrary.getFieldLength())
						.addAttribute("DefaultValue", otiFieldLibrary.getFieldDefault())
						.addAttribute("IsRequire", otiFieldLibrary.getIsRequire() ? "Y" : "N");
			}
		}
	}

	/**
	 * 把document对象写入新的文件
	 *
	 * @param document
	 * @throws Exception
	 */
	public Object writeDocument(Document document, String charset, Class clazz) {
		Object b = null;
		String filePath = System.getProperty("java.io.tmpdir")
				+ File.separator
				+ UUID.randomUUID().toString() + ".xml";
		try {
			OutputFormat format = OutputFormat.createPrettyPrint();
			// 设置编码
			format.setEncoding(charset);
			XMLWriter writer = new XMLWriter(new OutputStreamWriter(
					new FileOutputStream(new File(filePath)), charset), format);
			// 写入
			writer.write(document);
			// 立即写入
			writer.flush();
			// 关闭操作
			writer.close();

			String s = clazz.getTypeName();
			if (clazz.getTypeName().equals("java.lang.String")) {
				b = IoUtil.read(new FileInputStream(filePath), charset);
			} else {
				b = IoUtil.readBytes(new FileInputStream(filePath));
			}
			FileUtil.del(filePath);

		} catch (Exception e) {
			e.printStackTrace();
			log.error(e.getMessage());
		}
		return b;
	}

	public Map<String, Object> outputOtiConfig(String msgId) {
		Map<String, Object> resultMap = new LinkedHashMap<>();
		OtiConfig otiConfig = otiConfigMapper.findByMsgId(msgId);
		if (Objects.isNull(otiConfig)) {
			resultMap.put("error", String.format("msgId[%s] config not exist", msgId));
		} else {
			resultMap.put("Id", otiConfig.getMsgId());
			resultMap.put("Description", otiConfig.getMsgNameDesp());
			resultMap.put("Encoding", otiConfig.getCharset());
			List<OtiFieldLibrary> otiFieldLibraries = otiFieldLibraryMapper.findFieldLibraryByMsgId(msgId);
			resultMap.put("Fields", buildOtiConfigToMap(otiFieldLibraries, new LinkedHashMap<>(), null));
		}
		return resultMap;
	}

	private Map<String, Object> buildOtiConfigToMap(List<OtiFieldLibrary> otiFieldLibraries,
													Map<String, Object> resultMap,
													Long parentId) {
		for (OtiFieldLibrary otiFieldLibrary : otiFieldLibraries) {
			if (Objects.isNull(parentId) && Objects.isNull(otiFieldLibrary.getParentId())
					|| parentId == otiFieldLibrary.getParentId()) {
				log.info(String.valueOf(parentId));
				log.info(String.valueOf(otiFieldLibrary.getParentId()));

				Map<String, Object> fieldMap = new LinkedHashMap<>();
				fieldMap.put("FieldTag", otiFieldLibrary.getFieldTag());
				fieldMap.put("Description", otiFieldLibrary.getFieldDesp());
				fieldMap.put("DataType", DataType.getName(otiFieldLibrary.getDataType()));
				if (otiFieldLibrary.getDataType() == DataType.OBJECT.code) {
					fieldMap.put("Fields", buildOtiConfigToMap(otiFieldLibraries,
							new LinkedHashMap<>(),
							otiFieldLibrary.getId()));
				} else if (otiFieldLibrary.getDataType() == DataType.ARRAY.code) {
					fieldMap.put("TableField", otiFieldLibrary.getTableField());
					fieldMap.put("Fields", buildOtiConfigToMap(otiFieldLibraries,
							new LinkedHashMap<>(),
							otiFieldLibrary.getId()));
				} else {
					fieldMap.put("Length", otiFieldLibrary.getFieldLength());
					fieldMap.put("DefaultValue", otiFieldLibrary.getFieldDefault());
					fieldMap.put("IsRequire", otiFieldLibrary.getIsRequire());
				}
				resultMap.put(otiFieldLibrary.getFieldTag(), fieldMap);
			}
		}
		return resultMap;
	}

	@Getter
	static enum DataType {

		STRING(1, "string"),
		INT(2, "int"),
		DOUBLE(3, "double"),
		OBJECT(4, "object"),
		ARRAY(5, "array");

		public int code;
		public String name;

		DataType(int code, String name) {
			this.code = code;
			this.name = name;
		}

		public static String getName(int sCode) {
			for (DataType dataType : DataType.values()) {
				if (sCode == dataType.code)
					return dataType.name;
			}
			return DataType.STRING.name;
		}
	}
}
