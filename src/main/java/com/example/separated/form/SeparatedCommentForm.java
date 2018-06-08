package com.example.separated.form;

/**
 * コメントフォーム.
 * 
 * @author igamasayuki
 *
 */
public class SeparatedCommentForm {

	/** 投稿者名 */
	private String name;
	/** 投稿内容 */
	private String content;
	/** 記事ＩＤ */
	private Integer articleId;
	
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
	public Integer getArticleId() {
		return articleId;
	}
	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}
	
}
