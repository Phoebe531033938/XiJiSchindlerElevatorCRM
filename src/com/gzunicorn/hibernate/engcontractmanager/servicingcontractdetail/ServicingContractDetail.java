package com.gzunicorn.hibernate.engcontractmanager.servicingcontractdetail;

import com.gzunicorn.hibernate.engcontractmanager.servicingcontractmaster.ServicingContractMaster;

/**
 * ServicingContractDetail entity. @author MyEclipse Persistence Tools
 */
public class ServicingContractDetail extends AbstractServicingContractDetail
		implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public ServicingContractDetail() {
	}

	/** minimal constructor */
	public ServicingContractDetail(String elevatorNo, String salesContractNo,
			String projectName, String contents) {
		super(elevatorNo, salesContractNo, projectName, contents);
	}

	/** full constructor */
	public ServicingContractDetail(
			ServicingContractMaster servicingContractMaster, String elevatorNo,
			String salesContractNo, String projectName, String contents,
			String r1, String r2, String r3, String r4, String r5, Double r6,
			Double r7, Double r8, Integer r9, Integer r10) {
		super(servicingContractMaster, elevatorNo, salesContractNo,
				projectName, contents, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10);
	}

}
