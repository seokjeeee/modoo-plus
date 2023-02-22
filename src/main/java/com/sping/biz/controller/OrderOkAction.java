package com.sping.biz.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sping.biz.member.OrderDAO;
import com.sping.biz.member.OrderDetail;
import com.sping.biz.member.OrderVO;
import com.sping.biz.product.ProductDAO;
import com.sping.biz.product.ProductVO;

public class OrderOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		forward.setPath("order-ok.jsp");
		forward.setRedirect(true);

		ProductVO pvo = new ProductVO();
		ProductDAO pdao = new ProductDAO();
		OrderDAO odao = new OrderDAO();
		OrderVO ovo = new OrderVO();
		OrderVO last = new OrderVO();
		OrderDetail od = new OrderDetail();

		ArrayList<ProductVO> prodList = new ArrayList<ProductVO>();

		String[] arpNum = request.getParameterValues("pNum");
		String[] arpCnt = request.getParameterValues("pCnt");

		for (int i = 0; i < arpNum.length; i++) {
			pvo.setpNum(Integer.parseInt(arpNum[i]));
			pvo = pdao.selectOne(pvo);
			pvo.setpCnt(Integer.parseInt(arpCnt[i]));
			prodList.add(pvo);
		}

		int mNum = (Integer)request.getSession().getAttribute("mNum");

		ovo.setmNum(mNum);
		ovo.setoShipName(request.getParameter("mName"));
		ovo.setoZipCode(request.getParameter("zipCode"));
		ovo.setoUserAddr(request.getParameter("userAddr"));
		ovo.setoDetailAddr(request.getParameter("detailAddr"));
		ovo.setoTel(request.getParameter("receiverCellPhone"));
		ovo.setoPoint(Integer.parseInt(request.getParameter("useMileage")));
		odao.insert(ovo);

		ovo = new OrderVO();
		ovo.setmNum(mNum);
		last = odao.selectOne(ovo);
		for (int i = 0; i < prodList.size(); i++) {
			od.setoNum(last.getoNum());
			od.setpNum(prodList.get(i).getpNum());
			od.setCnt(prodList.get(i).getpCnt());
			odao.insert(od);
		}

		return forward;

	}
}