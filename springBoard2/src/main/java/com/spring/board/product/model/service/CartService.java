package com.spring.board.product.model.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.board.product.model.dao.CartDAO;
import com.spring.board.product.model.vo.CartVO;

@Service
public class CartService {
	
	@Inject
	CartDAO cartDao;
	
	// 1. 장바구니 추가
	public void insert(CartVO vo) {
		cartDao.insert(vo);
	}
	// 2. 장바구니 목록
	public List<CartVO> listCart(String userId) {
		return cartDao.listCart(userId);
	}
	// 3. 장바구니 삭제
	public void delete(int cartId) {
		cartDao.delete(cartId);
	}
	// 4. 장바구니 수정
	public void modifyCart(CartVO vo) {
		cartDao.modifyCart(vo);
	}
	// 5. 장바구니 금액 합계
	public int sumMoney(String userId) {
		return cartDao.sumMoney(userId);
	}
	// 6. 장바구니 상품확인
	public int countCart(int productId, String userId) {
		return cartDao.countCart(productId, userId);
	}
	// 7. 장바구니 상품수량 변경
	public void updateCart(CartVO vo) {
		cartDao.updateCart(vo);
	}

}
