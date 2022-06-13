package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeAdd;

public interface FranchiseeAddService {

	List<FranchiseeAdd> list();

	void add(FranchiseeAdd franchiseeAdd);

	FranchiseeAdd item(int franchisee_suggest_code);

}
