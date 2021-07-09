package com.virtusa.elibrary.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.virtusa.elibrary.model.Filter;
import com.virtusa.elibrary.repository.FilterRepository;

@Service
public class FilterService {
	@Autowired
	private FilterRepository repo;
	
	public List<Filter> listAll(String keyword) {
		if (keyword != null) {
			return repo.search(keyword);
		}
		return repo.findAll();
	}
	public List<Filter> findAll()
	{
		return repo.findAllByOrderByDateDesc();
	}
}
	