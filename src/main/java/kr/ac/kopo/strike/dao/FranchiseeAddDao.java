package kr.ac.kopo.strike.dao;

import java.util.List;

import kr.ac.kopo.strike.model.FranchiseeAdd;

public interface FranchiseeAddDao {

	List<FranchiseeAdd> list();

	void add(FranchiseeAdd franchiseeAdd);

	FranchiseeAdd item(int franchisee_suggest_code);

}
