package kr.ac.kopo.strike.dao;

import kr.ac.kopo.strike.model.Franchisee;

public interface FranchiseeLoginDao {

	Franchisee check(String id, String pw);

}
