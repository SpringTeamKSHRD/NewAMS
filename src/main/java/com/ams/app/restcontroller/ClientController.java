package com.ams.app.restcontroller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.ams.app.entities.ArticleDto;
import com.ams.app.serviceimplement.ClientDao;

@RestController
@RequestMapping(value="/api/article")
public class ClientController {
	@Autowired
	private ClientDao dao;
	
	@RequestMapping(value="/",method=RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> articleFunction(ArticleDto art){
		Map<String, Object> map = new HashMap<String, Object>();
		ResponseEntity<Map<String,Object>> resentity=null;
		
		switch(art.getKey()){
		case "R":
			ArrayList<ArticleDto> list = dao.getArticleList(art);
			if (list.isEmpty()) {
				map.put("MESSAGE", "ARTICLE NOT FOUND");
				map.put("STATUS", HttpStatus.NOT_FOUND.value());
				resentity= new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);
			} else {
				map.put("MESSAGE", "ARTICLE HAS BEEN FOUND");
				map.put("STATUS", HttpStatus.FOUND.value());
				map.put("RESPONE_DATA", list);
				resentity= new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			}
			break;
		case "S":
			ArrayList<ArticleDto> list1 = dao.searchArticle(art);
			if (list1.isEmpty()) {
				map.put("MESSAGE", "ARTICLE NOT FOUND");
				map.put("STATUS", HttpStatus.NOT_FOUND.value());
				resentity= new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);
			} else {
				map.put("MESSAGE", "ARTICLE HAS BEEN FOUND");
				map.put("STATUS", HttpStatus.FOUND.value());
				map.put("RESPONE_DATA", list1);
				resentity= new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
			}
			break;
			
		}
		return resentity;
	}
	@RequestMapping(value = "/{id}")
	public ResponseEntity<Map<String, Object>> getArticle(
			@PathVariable("id") int id) {
		Map<String, Object> map = new HashMap<String, Object>();
		ArticleDto article = dao.getArticle(id);

		if (article == null) {
			map.put("MESSAGE", "ARTICLE NOT FOUND");
			map.put("STATUS", HttpStatus.NOT_FOUND.value());
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} else {
			map.put("MESSAGE", "ARTICLE DETAIL");
			map.put("STATUS", HttpStatus.FOUND.value());
			map.put("RESPONE_DATA", article);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		}
	}
	/*@RequestMapping(value = "/getarticlelist")
	public ResponseEntity<Map<String, Object>> getArticleList(ArticleDto art) {
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<ArticleDto> list = dao.getArticleList(art);
		if (list.isEmpty()) {
			map.put("MESSAGE", "ARTICLE NOT FOUND");
			map.put("STATUS", HttpStatus.NOT_FOUND.value());
			return new ResponseEntity<Map<String, Object>>(map,HttpStatus.NOT_FOUND);
		} else {
			map.put("MESSAGE", "ARTICLE HAS BEEN FOUND");
			map.put("STATUS", HttpStatus.FOUND.value());
			map.put("RESPONE_DATA", list);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		}
	}

	@RequestMapping(value = "/getarticlesearch", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getArticleSearchList(
			ArticleDto art) {
		Map<String, Object> map = new HashMap<String, Object>();
		ArrayList<ArticleDto> list = dao.searchArticle(art);
		if (list.isEmpty()) {
			map.put("MESSAGE", "ARTICLE NOT FOUND");
			map.put("STATUS", HttpStatus.NOT_FOUND.value());
			return new ResponseEntity<Map<String, Object>>(map,
					HttpStatus.NOT_FOUND);
		} else {
			map.put("MESSAGE", "ARTICLE HAS BEEN FOUND");
			map.put("STATUS", HttpStatus.FOUND.value());
			map.put("RESPONE_DATA", list);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		}
	}

	@RequestMapping(value = "/getnumberrow", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> getNumberRow(
			@RequestParam("rowname") String rowname,
			@RequestParam("search") String search) {
		Map<String, Object> map = new HashMap<String, Object>();
		int numberrow = dao.getNumberRow(rowname, search);
		if (numberrow == 0) {
			map.put("MESSAGE", "ARTICLE NOT FOUND");
			map.put("STATUS", HttpStatus.NOT_FOUND.value());
			return new ResponseEntity<Map<String, Object>>(map,
					HttpStatus.NOT_FOUND);
		} else {
			map.put("MESSAGE", "ARTICLE HAS BEEN FOUND");
			map.put("STATUS", HttpStatus.FOUND.value());
			map.put("RESPONE_DATA", numberrow);
			return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		}
	}*/
}
