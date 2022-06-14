package kr.ac.kopo.strike.service;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeAdd;
import kr.ac.kopo.strike.util.Pager;

public interface FranchiseeAddService {

	List<FranchiseeAdd> list(Pager pager);

	void add(FranchiseeAdd franchiseeAdd);

	FranchiseeAdd item(int franchisee_suggest_code);

}
