package com.ams.app.services;

import java.util.ArrayList;

import com.ams.app.entities.ArticleDto;

public interface ClientService {
	   
	public ArrayList<ArticleDto> getArticleList(ArticleDto art);
	public ArrayList<ArticleDto> searchArticle(ArticleDto art);
	public int getNumberRow(String rowname,String search);
	public ArticleDto getArticle(int id);
}
