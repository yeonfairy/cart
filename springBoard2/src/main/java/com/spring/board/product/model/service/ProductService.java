package com.spring.board.product.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.board.product.model.dao.ProductDao;
import com.spring.board.product.model.vo.ProductVO;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;
	
	// 01. 상품목록
	public List<ProductVO> listProduct() {
		return productDao.listProduct();
	}
	// 02. 상품상세
	public ProductVO detailProduct(int productId) {
		return productDao.detailProduct(productId);
	}
	// 03. 상품수정
	public void updateProduct(ProductVO vo) {
		productDao.updateProduct(vo);
	}
	// 04. 상품삭제
	public void deleteProduct(int productId) {
		productDao.deleteProduct(productId);
	}
	// 05. 상품추가
	public void insertProduct(ProductVO vo) {
		productDao.insertProduct(vo);	
	}
	// 06. 상품이미지 삭제를 위한 이미지파일 정보
	public String fileInfo(int productId) {
		return productDao.fileInfo(productId);
	}
}
