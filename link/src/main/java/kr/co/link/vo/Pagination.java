package kr.co.link.vo;

public class Pagination {
	// 현재 페이지 번호
	private int page;
	// 한 화면에 몇개나 표시?
	private int size;
	// 숫자 블럭 몇개씩?
	private int pages;
	// 가져올 데이터 총 갯수
	private int records;
	// 페이지 갯수(총 페이지 수 / size) 후 올림
	private int totalPages;
	// 총 블럭 갯수((1: 1~5 / 2: 6~10 / 3: 11~15..) 이고 1~5라면 3블럭중 1블럭)
	private int totalBlocks;
	// 현재 블럭(1: 1~5 / 2: 6~10 / 3: 11~15..)
	private int currentBlock;		

	public Pagination(int page, int records) {   
		this.page = page;
		this.size = 10;
		this.pages = 10;
		this.records = records;
		init();
	}

	public Pagination(int page, int size, int records) {   
		this.page = page;
		this.size = size;
		this.pages = 10;
		this.records = records;
		init();
	}

	public Pagination(int page, int size, int pages, int records) {   
		this.page = page;
		this.size = size;
		this.pages = pages;
		this.records = records;
		init();
	}

	public int getPage() {
		return page;
	}

	public boolean isFirst() {
		if (page == 1) {
			return true;
		}
		return false;
	}

	public boolean isLast() {
		if (page == totalPages) {
			return true;
		}
		return false;
	}

	public int getBegin() {
		if (records <= 0) {
			return 0;
		}

		if (currentBlock >= totalBlocks) {
			currentBlock = totalBlocks;
		}
		return (currentBlock - 1) * pages + 1;
	}

	public int getEnd() {
		if (records <= 0) {
			return 0;
		}
		if (currentBlock >= totalBlocks) {
			return totalPages;
		}
		return currentBlock*pages;
	}

	private void init() {
		if (page <= 0) {
			page = 1;
		}
		totalPages = (int) (Math.ceil((double) records/size));
		if (page >= totalPages) {
			page = totalPages;
		}
		totalBlocks = (int) (Math.ceil((double) totalPages/pages));
		currentBlock = (int) (Math.ceil((double) page/pages));
	}
}
