package com.psa.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.psa.flightapp.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
