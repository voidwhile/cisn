package com.voidwhile.cisn.entity;

public class TestAnswer {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column cisn_test_answer.id
	 * @mbg.generated
	 */
	private Integer id;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column cisn_test_answer.test_id
	 * @mbg.generated
	 */
	private Integer testId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column cisn_test_answer.question_id
	 * @mbg.generated
	 */
	private Integer questionId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column cisn_test_answer.answer_id
	 * @mbg.generated
	 */
	private Integer answerId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column cisn_test_answer.content
	 * @mbg.generated
	 */
	private String content;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column cisn_test_answer.id
	 * @return  the value of cisn_test_answer.id
	 * @mbg.generated
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column cisn_test_answer.id
	 * @param id  the value for cisn_test_answer.id
	 * @mbg.generated
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column cisn_test_answer.test_id
	 * @return  the value of cisn_test_answer.test_id
	 * @mbg.generated
	 */
	public Integer getTestId() {
		return testId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column cisn_test_answer.test_id
	 * @param testId  the value for cisn_test_answer.test_id
	 * @mbg.generated
	 */
	public void setTestId(Integer testId) {
		this.testId = testId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column cisn_test_answer.question_id
	 * @return  the value of cisn_test_answer.question_id
	 * @mbg.generated
	 */
	public Integer getQuestionId() {
		return questionId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column cisn_test_answer.question_id
	 * @param questionId  the value for cisn_test_answer.question_id
	 * @mbg.generated
	 */
	public void setQuestionId(Integer questionId) {
		this.questionId = questionId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column cisn_test_answer.answer_id
	 * @return  the value of cisn_test_answer.answer_id
	 * @mbg.generated
	 */
	public Integer getAnswerId() {
		return answerId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column cisn_test_answer.answer_id
	 * @param answerId  the value for cisn_test_answer.answer_id
	 * @mbg.generated
	 */
	public void setAnswerId(Integer answerId) {
		this.answerId = answerId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column cisn_test_answer.content
	 * @return  the value of cisn_test_answer.content
	 * @mbg.generated
	 */
	public String getContent() {
		return content;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column cisn_test_answer.content
	 * @param content  the value for cisn_test_answer.content
	 * @mbg.generated
	 */
	public void setContent(String content) {
		this.content = content;
	}
}