package br.com.psi.blank.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.psi.blank.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
	User findByUsername(String username);
}
