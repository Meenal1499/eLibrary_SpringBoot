package com.virtusa.elibrary.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.virtusa.elibrary.model.Filter;

public interface FilterRepository extends JpaRepository<Filter, Long> {
	@Query("SELECT p FROM Filter p WHERE CONCAT( p.book, ' ', p.author, ' ', p.category, ' ', p.genre, ' ', p.publisher, ' ', p.location, ' ', p.language) LIKE %?1%")
	public List<Filter> search(String keyword);
	public List<Filter> findAllByOrderByDateDesc();
}
