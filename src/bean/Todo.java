package bean;

import java.io.Serializable;

/**
 * Todo情報を管理するBean
 */
public class Todo implements Serializable {

	/** 重要度 */
	private int important;
	/** 内容 */
	private String info;
	/** 期限 */
	private String deadline;
	/**ジャンル**/
	private String genre;

	public Todo() {
	}

	public Todo(int important, String info, String deadline,String genre) {
		this.important = important;
		this.info = info;
		this.deadline = deadline;
		this.genre = genre;
	}

	public int getImportant() {
		return important;
	}

	public void setImportant(int important) {
		this.important = important;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

}
