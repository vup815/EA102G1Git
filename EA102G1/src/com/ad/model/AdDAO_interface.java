package com.ad.model;

import java.util.List;

public interface AdDAO_interface {
	public void insert(AdVO adVO);
	public void update(AdVO adVO);
//	public void delete(String ad_id);
	public AdVO findByPrimaryKey(String ad_id);
	public List<AdVO> getAll();

}
