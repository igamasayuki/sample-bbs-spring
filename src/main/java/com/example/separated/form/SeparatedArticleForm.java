package com.example.separated.form;

/**
 * 記事フォーム.
 * 
 * @author igamasayuki
 *
 */
public class SeparatedArticleForm {

	/** 投稿者名 */
	private String name;
	/** 投稿内容 */
	private String content;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
