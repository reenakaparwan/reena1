package com.hck.model;

import java.io.Serializable;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
public class Developermaster implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ticketNo;

	

	private String description;
	private String asignee;
	
	@DateTimeFormat(style = "S-")
	private Date devEndDate;

	@DateTimeFormat(style = "S-")
	private Date devStartDate;

	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date plannedDate;

	private String resolutionSummary;

	private String resolutionTime;

	@DateTimeFormat(pattern = "yy-MM-dd M-")
	private Date stagingDate;

	public Date getDevEndDate() {

		return devEndDate;

	}

	public void setDevEndDate(Date devEndDate) {

		this.devEndDate = devEndDate;

	}

	public Date getDevStartDate() {

		return devStartDate;

	}

	public void setDevStartDate(Date devStartDate) {

		this.devStartDate = devStartDate;

	}

	public Date getPlannedDate() {

		return plannedDate;

	}

	public void setPlannedDate(Date plannedDate) {

		this.plannedDate = plannedDate;

	}

	public Date getStagingDate() {

		return stagingDate;

	}

	public void setStagingDate(Date stagingDate) {

		this.stagingDate = stagingDate;

	}

	public Date getQAStartDate() {

		return QAStartDate;

	}

	public void setQAStartDate(Date qAStartDate) {

		QAStartDate = qAStartDate;

	}

	public Date getQAEndDate() {

		return QAEndDate;

	}

	public void setQAEndDate(Date qAEndDate) {

		QAEndDate = qAEndDate;

	}

	public Date getReopenedTestedDate() {

		return reopenedTestedDate;

	}

	public void setReopenedTestedDate(Date reopenedTestedDate) {

		this.reopenedTestedDate = reopenedTestedDate;

	}

	private String status;

	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date QAStartDate;

	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date QAEndDate;

	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date reopenedTestedDate;

	private String reviewedBy, reviewedOn, reviewComments, verifiedChecklist,
			unitTesting, anyTeamsitechanges, anyLibrarycodechanges;

	private String impactofChanges, QAInstructions, testedBy, QAIssuesfound,
			QAComments, reopened, reopenedTestingComments;

	public String getReviewedBy() {

		return reviewedBy;

	}

	public void setReviewedBy(String reviewedBy) {

		this.reviewedBy = reviewedBy;

	}

	public String getReviewedOn() {

		return reviewedOn;

	}

	public void setReviewedOn(String reviewedOn) {

		this.reviewedOn = reviewedOn;

	}

	public String getReviewComments() {

		return reviewComments;

	}

	public void setReviewComments(String reviewComments) {

		this.reviewComments = reviewComments;

	}

	public String getVerifiedChecklist() {

		return verifiedChecklist;

	}

	public void setVerifiedChecklist(String verifiedChecklist) {

		this.verifiedChecklist = verifiedChecklist;

	}

	public String getUnitTesting() {

		return unitTesting;

	}

	public void setUnitTesting(String unitTesting) {

		this.unitTesting = unitTesting;

	}

	public String getAnyTeamsitechanges() {

		return anyTeamsitechanges;

	}

	public void setAnyTeamsitechanges(String anyTeamsitechanges) {

		this.anyTeamsitechanges = anyTeamsitechanges;

	}

	public String getAnyLibrarycodechanges() {

		return anyLibrarycodechanges;

	}

	public void setAnyLibrarycodechanges(String anyLibrarycodechanges) {

		this.anyLibrarycodechanges = anyLibrarycodechanges;

	}

	public String getImpactofChanges() {

		return impactofChanges;

	}

	public void setImpactofChanges(String impactofChanges) {

		this.impactofChanges = impactofChanges;

	}

	public String getQAInstructions() {

		return QAInstructions;

	}

	public void setQAInstructions(String qAInstructions) {

		QAInstructions = qAInstructions;

	}

	public String getTestedBy() {

		return testedBy;

	}

	public void setTestedBy(String testedBy) {

		this.testedBy = testedBy;

	}

	public String getQAIssuesfound() {

		return QAIssuesfound;

	}

	public void setQAIssuesfound(String qAIssuesfound) {

		QAIssuesfound = qAIssuesfound;

	}

	public String getQAComments() {

		return QAComments;

	}

	public void setQAComments(String qAComments) {

		QAComments = qAComments;

	}

	public String getReopened() {

		return reopened;

	}

	public void setReopened(String reopened) {

		this.reopened = reopened;

	}

	public String getReopenedTestingComments() {

		return reopenedTestingComments;

	}

	public void setReopenedTestingComments(String reopenedTestingComments) {

		this.reopenedTestingComments = reopenedTestingComments;

	}

	public Developermaster() {

	}

	public int getTicketNo() {

		return this.ticketNo;

	}

	public void setTicketNo(int ticketNo) {

		this.ticketNo = ticketNo;

	}

	public String getDescription() {

		return this.description;

	}

	public void setDescription(String description) {

		this.description = description;

	}

	public String getResolutionSummary() {

		return this.resolutionSummary;

	}

	public void setResolutionSummary(String resolutionSummary) {

		this.resolutionSummary = resolutionSummary;

	}

	public String getResolutionTime() {

		return this.resolutionTime;

	}

	public void setResolutionTime(String resolutionTime) {

		this.resolutionTime = resolutionTime;

	}

	public String getStatus() {

		return this.status;

	}

	public void setStatus(String status) {

		this.status = status;

	}

	public String getAsignee() {
		return asignee;
	}

	public void setAsignee(String asignee) {
		this.asignee = asignee;
	}
	

}