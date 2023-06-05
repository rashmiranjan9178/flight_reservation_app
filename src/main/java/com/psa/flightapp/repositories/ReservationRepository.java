package com.psa.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.psa.flightapp.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
