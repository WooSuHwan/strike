package kr.ac.kopo.strike.dao;

import kr.ac.kopo.strike.model.Franchisee;

public interface FranchiseeDao {

	void add(Franchisee franchisee);

	int idCount(String franchisee_id);

}
