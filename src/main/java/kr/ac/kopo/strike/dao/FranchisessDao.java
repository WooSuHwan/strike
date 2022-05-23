package kr.ac.kopo.strike.dao;

import kr.ac.kopo.strike.model.Franchisee;

public interface FranchisessDao {

	boolean confirm(String franchisee_id);

	void add(Franchisee franchisee);

}
