package com.adm.model;

import java.util.List;


public class AdmService {
	
	private AdmDAO_interface dao;
	
	public AdmService() {
		dao = new AdmJDBCDAO();
	}
	//管理員註冊
	public AdmVO add_adm(String adm_account,String adm_pwd,String adm_name) {
		AdmVO admvo = new AdmVO();
		admvo.setAdm_account(adm_account);
		admvo.setAdm_pwd(adm_pwd);
		admvo.setAdm_name(adm_name);		
		dao.insert(admvo);
		return admvo;
	}
	
	//修改後臺管理員
	public AdmVO update_adm(String adm_account,String adm_pwd,String adm_name,Integer adm_1,Integer adm_2,Integer adm_3,String adm_id) {
		AdmVO admVO = new AdmVO();
		
		admVO.setAdm_account(adm_account);
		admVO.setAdm_pwd(adm_pwd);
		admVO.setAdm_name(adm_name);
		admVO.setAdm_1(adm_1);
		admVO.setAdm_2(adm_2);
		admVO.setAdm_3(adm_3);
		admVO.setAdm_id(adm_id);
		
		dao.update(admVO);

		return admVO;
	}
	
	//查單個管理員帳號
	public AdmVO findByPrimaryKey(String adm_id) {
		return dao.findByPrimaryKey(adm_id);
	}
	//全部管理員帳號資料
	public List<AdmVO> getAll(){
		return dao.getAll();
	}
	//用單個管理員帳號查資料(登入用)
	public AdmVO adm_login(String adm_account) {
		AdmVO admvo = dao.getOneByAdm(adm_account);
		return admvo;
	}
	//查詢全部管理員帳號(登入用)
	public List<String> getAlladm_account(){
		return dao.getAlladm_account();
	}
	
	

}
