package kr.ac.kopo.strike.service;

import kr.ac.kopo.strike.model.Franchisee;

public interface FranchiseeService {

	boolean confirm(String franchisee_id);

	void add(Franchisee franchisee_id);

}
