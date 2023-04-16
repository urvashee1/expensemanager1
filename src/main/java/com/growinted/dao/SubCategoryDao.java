package com.growinted.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.growinted.bean.SubCategoryBean;

@Repository
public class SubCategoryDao {

	@Autowired
	JdbcTemplate stmt;
	public void addSubCategory(SubCategoryBean subcategoryBean) {
	String insertQuery = "insert into subcategory (categoryId,subCategoryName,deleted) values (?,?,?) ";

	stmt.update(insertQuery,subcategoryBean.getCategoryId(),subcategoryBean.getSubCategoryName(),false);// insert //update //delete
}

	public List<SubCategoryBean> getAllSubCategory() {

		String joinQuery = "select c.categoryName,sc.categoryId,sc.subCategoryId,sc.subCategoryName,sc.deleted from category c, subcategory sc where c.categoryId=sc.categoryId and sc.deleted=false";

		return stmt.query(joinQuery, new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class));
		
		//c1 c2 c3 
		
	}
	public void deleteSubCategory(Integer subCategoryId) {
		String updateQuery="update subCategory set deleted = true where subCategoryId =?";
		stmt.update(updateQuery,subCategoryId);
	}
	public SubCategoryBean getSubCategoryById(Integer subCategoryId) {
		SubCategoryBean subcategoryBean =null;
		try {
			subcategoryBean=stmt.queryForObject("select * from subcategory where subCategoryId=?",new BeanPropertyRowMapper<SubCategoryBean>(SubCategoryBean.class),new Object[] { subCategoryId});
			}
		catch(Exception e) {
			System.out.println("SubCategoryDao :: getSubCategoryById()");
	        System.out.println(e.getMessage());
		}
	return subcategoryBean;
	}
	public void updateSubCategory(SubCategoryBean subcategoryBean) {
		String updateQuery="update subcategory set subCategoryName=?, categoryId=? where subCategoryId=?";
	    stmt.update(updateQuery,subcategoryBean.getSubCategoryName(),subcategoryBean.getCategoryId(),subcategoryBean.getSubCategoryId());
	}
}
