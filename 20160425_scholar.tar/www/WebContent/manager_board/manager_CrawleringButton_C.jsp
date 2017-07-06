<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="crawler.Crawler_JangHakDoSa"%>
<%@ page import="crawler.Crawler_School_HanYang"%>
<%@ page import="crawler.Crawler_School_SeoulNational"%>
<%@ page import="crawler.Crawler_School_YonSei"%>
<%@ page import="crawler.Crawler_School_Korea"%>
<%@ page import="crawler.Crawler_School_SoGang"%>
<%@ page import="crawler.Crawler_School_SungKyunKwan"%>
<%@ page import="crawler.Crawler_School_KyungHee"%>
<%@ page import="crawler.Crawler_School_Hurfs"%>
<%@ page import="crawler.Crawler_School_SeoulCity"%>
<%@ page import="crawler.Crawler_School_KonKuk"%>
<%@ page import="crawler.Crawler_School_DongGuk"%>
<%@ page import="dto.ScholarVO"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	여기는 CrawlerButton_C.jsp입니다.


	<%!Crawler_JangHakDoSa crawlering_JangHakDosa = new Crawler_JangHakDoSa();%>
	<%!Crawler_School_HanYang crawlering_School_HanYang = new Crawler_School_HanYang();%>
	<%!Crawler_School_SeoulNational crawlering_School_SeoulNational = new Crawler_School_SeoulNational();%>
	<%!Crawler_School_YonSei crawlering_School_YonSei = new Crawler_School_YonSei();%>
	<%!Crawler_School_Korea crawlering_School_Korea = new Crawler_School_Korea();%>
	<%!Crawler_School_SoGang crawlering_School_SoGang = new Crawler_School_SoGang();%>
	<%!Crawler_School_SungKyunKwan crawlering_School_SungKyunKwan = new Crawler_School_SungKyunKwan();%>
	<%!Crawler_School_KyungHee crawlering_School_KyungHee = new Crawler_School_KyungHee();%>
	<%!Crawler_School_Hurfs crawlering_School_Hurfs = new Crawler_School_Hurfs();%>
	<%!Crawler_School_SeoulCity crawlering_School_SeoulCity = new Crawler_School_SeoulCity();%>
	<%!Crawler_School_KonKuk crawlering_School_KonKuk = new Crawler_School_KonKuk();%>
	<%!Crawler_School_DongGuk crawlering_School_DongGuk = new Crawler_School_DongGuk();%>
	
	
	
	<%
		request.setCharacterEncoding("UTF-8");

		String target_crawler = request.getParameter("crawler_select");

		if (target_crawler.equals("jangHakDoSa")) { //crawlering result : janghakdosa

			out.println("장학도사 사이트 크롤링 결과 <br><br>");
			List<ScholarVO> DBresultSVOs = crawlering_JangHakDosa
					.mainfunction();

			for (ScholarVO e : DBresultSVOs) {
				out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
						+ "장학금 명/재단 명 " + e.getScholarname() + "/"
						+ e.getFoundationname() + "<br>");
				out.println("------------------------------------------------<br><br>");

			}

			out.println("총 데이터베이스에 입력 시도 된 장학금 갯수 : " + DBresultSVOs.size()
					+ "  ");
			out.println("<br><br><br><br><br><br>");

		}

		else if (target_crawler.equals("dreamSpon")) { //crawlering result : dreamspon

		}

		else if (target_crawler.equals("school_SeoulNational")) { //crawlering result : seoul national university

			out.println("<br>=================== 서울대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_SeoulNational
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 서울대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================서울대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}

		else if (target_crawler.equals("school_YonSei")) { //crawlering result : seoul national university

			out.println("<br>=================== 연세대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_YonSei
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 연세대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================연세대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}

		else if (target_crawler.equals("school_Korea")) { //crawlering result : Korea university

			out.println("<br>=================== 고려대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_Korea
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 고려대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================고려대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		else if (target_crawler.equals("school_SoGang")) { //crawlering result : SoGang university

			out.println("<br>=================== 서강대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_SoGang
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 서강대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================서강대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		else if (target_crawler.equals("school_SungKyunKwan")) { //crawlering result : SungKyunKwan university

			out.println("<br>=================== 성균관대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_SungKyunKwan
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 성균관대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>====================성균관대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}

		else if (target_crawler.equals("school_HanYang")) { //crawlering result : HanYang school

			out.println("<br>=================== 한양대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_HanYang
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 한양대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================한양대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		} 
		
		else if (target_crawler.equals("school_KyungHee")) { //crawlering result : KyungHee school

			out.println("<br>=================== 경희대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_KyungHee
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 경희대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================경희대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		else if (target_crawler.equals("school_Hurfs")) { //crawlering result : Hurfs school

			out.println("<br>=================== 한국외대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_Hurfs
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 한국외대대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================한국외대대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		
		
		else if (target_crawler.equals("school_SeoulCity")) { //crawlering result : SeoulCity school

			out.println("<br>=================== 서울시립대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_SeoulCity
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 서울시립대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================서울시립 대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		else if (target_crawler.equals("school_KonKuk")) { //crawlering result : KonKuk school

			out.println("<br>=================== 건국대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_KonKuk
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 건국대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================건국 대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		
		else if (target_crawler.equals("school_DongGuk")) { //crawlering result : DongGuk school

			out.println("<br>=================== 동국대학교 크롤링 =================<br>");
			List<ScholarVO> DBresultSVOs = crawlering_School_DongGuk
					.mainfunction();

			System.out.println("여기까지도 완료!!!!!!!!!!!!!!!!!!!!!");
			System.out.println("DBresultSVOs의 개수 :" + DBresultSVOs.size());

			if (DBresultSVOs.size() != 0) {

				for (ScholarVO e : DBresultSVOs) {
					out.println(DBresultSVOs.indexOf(e) + 1 + "번 째 시도 | "
							+ "장학금 명/재단 명 " + e.getScholarname() + "/"
							+ e.getFoundationname() + "<br>");
					out.println("------------------------------------------------<br><br>");

				}

			} else {

				out.println("<br> 동국대학교 홈페이지에서 크롤링 시도 없음, 모두 DB에 존재함.===<br> ");
			}

			out.println("<br>=====================동국대학교 크롤링 끝 ====================<br>");
			out.println("<br><br>");

		}
		
		else if (target_crawler.equals("etc")) { //crawlering result : etc

		} else {
			out.println("ERROR : 선택을 다시 확인하세요");

		}
	%>

</body>
</html>