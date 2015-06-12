package com.luxoft.wheretogo.repositories;

import java.util.List;

import com.luxoft.wheretogo.models.Event;

public interface EventsRepository {

	void add(Event event);

	List<Event> findAll();

	Event findById(int eventId);

}