package com.six.semi.QNA.model.vo;

import java.io.Serializable;

public class PageInfo implements Serializable {
	
		private int  startPage;
		private int  endPage;
		private int  maxPage;
		private int  currentPage;
	    private int  limit;
	    private int listCount;
	    
	    // 기본 생성자
		public PageInfo() { }

		// 매개변수 있는 생성자
		public PageInfo(int startPage, int endPage, int maxPage, int currentPage, int limit, int listCount) {
			super();
			this.startPage = startPage;
			this.endPage = endPage;
			this.maxPage = maxPage;
			this.currentPage = currentPage;
			this.limit = limit;
			this.listCount = listCount;
		}

			
		
		// 게터 세터
		public int getStartPage() {
			return startPage;
		}


		public void setStartPage(int startPage) {
			this.startPage = startPage;
		}


		public int getEndPage() {
			return endPage;
		}


		public void setEndPage(int endPage) {
			this.endPage = endPage;
		}


		public int getMaxPage() {
			return maxPage;
		}


		public void setMaxPage(int maxPage) {
			this.maxPage = maxPage;
		}


		public int getCurrentPage() {
			return currentPage;
		}


		public void setCurrentPage(int currentPage) {
			this.currentPage = currentPage;
		}


		public int getLimit() {
			return limit;
		}


		public void setLimit(int limit) {
			this.limit = limit;
		}


		public int getListCount() {
			return listCount;
		}


		public void setListCount(int listCount) {
			this.listCount = listCount;
		}

		// 투스트링
		@Override
		public String toString() {
			return "PageInfo [startPage=" + startPage + ", endPage=" + endPage + ", maxPage=" + maxPage
					+ ", currentPage=" + currentPage + ", limit=" + limit + ", listCount=" + listCount + "]";
		}
		
		
	    
}
