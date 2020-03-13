package com.spring.board.product.model.dao;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.board.product.model.vo.ProductVO;


@Repository
public class ProductDao {
	
	@Inject
	SqlSession sqlSession;
	
	// 01. 상품목록
	public List<ProductVO> listProduct() {
		return sqlSession.selectList("productMapper.listProduct");
	}
	// 02. 상품상세
	public ProductVO detailProduct(int productId) {
		return sqlSession.selectOne("productMapper.detailProduct", productId);
	}
	// 03. 상품수정
	public void updateProduct(ProductVO vo) {
		sqlSession.update("productMapper.updateProduct", vo);

	}
	// 04. 상품삭제
	public void deleteProduct(int productId) {
		sqlSession.delete("productMapper.deleteProduct", productId);
	}
	// 05. 상품 추가
	public void insertProduct(ProductVO vo) {
		sqlSession.insert("productMapper.insertProduct", vo);
	}
	// 06. 상품이미지 삭제를 위한 이미지파일 정보
	public String fileInfo(int productId) {
		return sqlSession.selectOne("productMapper.fileInfo",productId);
	}

}
