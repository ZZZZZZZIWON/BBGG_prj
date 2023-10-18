package kr.ac.kopo.item.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.web.ItemVO;

@Repository
public class ItemDaoImpl implements ItemDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemDaoImpl.class);
	
	@Autowired
	SqlSession sql;

	
	@Override
	public List<ItemVO> itemList(ItemVO itemVO) {
		return sql.selectList("item.itemList", itemVO);
	}

	@Override
	public ItemVO itemSelect(ItemVO itemVO) {
		ItemVO vo =  sql.selectOne("item.itemSelect", itemVO);
		logger.info("LotM: {}", vo.getLeaseOrMonth());
		return vo;
	}
	
	@Override
	public void itemAdd(ItemVO itemVO) {
		// 첫 번째 INSERT 문 실행
        sql.insert("item.addItem", itemVO);
        
        Long itemNo = itemVO.getItemNo();
        
        HashMap<String, Long> map = new HashMap<String, Long>();
        
        if(itemVO.getLeaseOrMonth() == "lease") {
        	map.put("leasePrice", itemVO.getLeasePrice());
        	map.put("itemNo", itemNo);
        	sql.insert("item.leaseAdd", map);
        	
		} else if(itemVO.getLeaseOrMonth() == "month") {
			map.put("depositFee", itemVO.getDepositFee());
			map.put("monthPrice", itemVO.getMonthPrice());
			map.put("itemNo", itemNo);
			sql.insert("item.monthAdd", map);
		}
    }

	@Override
	public void leaseAdd(Map<String, Long> paramMap) {
		sql.insert("item.leaseAdd", paramMap);
	}

	@Override
	public void monthAdd(Map<String, Long> paramMap) {
		sql.insert("item.monthAdd", paramMap);
	}

	@Override
	public List<ItemVO> partItemList(Long partnerNo) {
		
		List<ItemVO> list = sql.selectList("item.partItemList", partnerNo);
		for (ItemVO item : list) {
		    if ("lease".equals(item.getLeaseOrMonth())) {
		        item.setPrice(item.getLeasePrice());
		    } else if ("month".equals(item.getLeaseOrMonth())) {
		        item.setPrice(item.getMonthPrice());
		    }
		}
		return list;
	}
	
	@Override
	public List<ItemVO> partOtherItemList(Map<String, Long> paramMap) {
		
		List<ItemVO> list = sql.selectList("item.partOtherItemList", paramMap);
		for (ItemVO item : list) {
			if ("lease".equals(item.getLeaseOrMonth())) {
				item.setPrice(item.getLeasePrice());
			} else if ("month".equals(item.getLeaseOrMonth())) {
				item.setPrice(item.getMonthPrice());
			}
		}
		return list;
	}

	@Override
	public void updateStatus(Long itemNo) {
		sql.update("item.updateStatus", itemNo);
	}

	@Override
	public String selectStatus(Long itemNo) {
		return sql.selectOne("item.selectStatus", itemNo);
	}

	@Override
	public void deleteItem(Long itemNo) {
		sql.update("item.deleteItem", itemNo);
	}

	

	@Override
	public String lomSelect(Long itemNo) {
		return sql.selectOne("item.lomSelect", itemNo);
	}

	@Override
	public List<FileVO> selectFile(Long itemNo) {
		return sql.selectList("item.selectFile", itemNo);
	}

	@Override
	public List<ItemVO> selectRecentList() {
		return sql.selectList("item.selectRecentList");
	}

	@Override
	public int viewCount(Long itemNo) {
		return sql.update("item.viewCount", itemNo);
	}

	@Override
	public FileVO selectItemFile(Long itemNo) {
		return sql.selectOne("item.selectItemFile", itemNo);
	}

	@Override
	public List<ItemVO> selectPopularList() {
		return sql.selectList("item.selectPopularList");
	}

	@Override
	public ItemVO itemDetail(Long itemNo) {
		return sql.selectOne("item.itemDetail", itemNo);
	}
	
	@Override
	public ItemVO itemDetail(Map<String, Long> paramMap) {
		return sql.selectOne("item.itemDetail", paramMap);
	}

	

	
}