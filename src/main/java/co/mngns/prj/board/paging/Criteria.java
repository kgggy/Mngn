package co.mngns.prj.board.paging;

import lombok.Data;

//게시판 페이징 전용 클래스
//Criteria : 사전적 의미로는 검색기준, 분류기준
@Data
public class Criteria {

	private int listSize = 10; // 저한 페이지당 보여질 게시글 개수. 초기값으로 목록개수를 10으로 셋팅
	private int rangeSize = 10; // 초기값으로 페이지범위를 10으로 셋팅
	private int page; // 현재 목록의 페이지 번호
	private int range; // 각 페이지 범위 시작 번호
	private int listCnt; // 전체 게시물 개수
	private int pageCnt; // 전체 페이지 범위 개수
	private int startPage; // 각 페이지 범위 시작 번호
	private int startList;
	private int endPage; // 각 페이지 범위 끝 번호
	private boolean prev; // 이전 페이지 여부
	private boolean next; // 다음 페이지 여부

	/*
	 * public Criteria() { // 최초 게시판에 진입할 때를 위해서 기본 값을 설정 해야 한다. this.page = 1; //
	 * 1페이지 this.listSize = 10; // 10개 게시글 }
	 */

	public void pageInfo(int page, int range, int listCnt) {
		this.page = page; //현재 페이지 정보
		this.range = range; //현재 페이지 범위 정보
		this.listCnt = listCnt; //게시물 총 개수

		// 전체 페이지수
		this.pageCnt = (int) Math.ceil(listCnt / listSize);

		// 시작 페이지
		this.startPage = (range - 1) * rangeSize + 1;

		// 끝 페이지(각 페이지 범위의 마지막 번호)
		this.endPage = range * rangeSize;

		// 게시판 시작번호
		this.startList = (page - 1) * listSize;

		// 이전 버튼 상태
		this.prev = range == 1 ? false : true;

		// 다음 버튼 상태
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}

		this.page = page;
	}

	public int getPerPageNum() {
		return listCnt;
	}

	public void setPerPageNum(int perPageNum) {

		if (perPageNum <= 0 || perPageNum > 100) {
			this.listCnt = 10;
			return;
		}

		this.listCnt = perPageNum;
	}

	/*
	 * limit 구문에서 시작 위치를 지정할 때 사용된다. 예를 들어 10개씩 출력하는 경우 3페이지의 데이터는 linit 20, 10 과 같은
	 * 형태가 되어야 한다.
	 */
	/* this.page 가 1이면 0이 되어야 한다 mysql limit 0, 10 해야 처음부터 10개씩 나온다. */
	/* 마이바티스 조회쿼리의 #{pageStart}에 전달된다. */
	public int getPageStart() {
		return (this.page - 1) * listCnt;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + listCnt + "]";
	}
}
