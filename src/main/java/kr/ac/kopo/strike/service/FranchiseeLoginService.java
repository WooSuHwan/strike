package kr.ac.kopo.strike.service;

import kr.ac.kopo.strike.model.Franchisee;

public interface FranchiseeLoginService {

	Franchisee check(String id, String pw);

}
