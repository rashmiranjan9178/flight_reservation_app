package com.psa.flightapp.services;

import com.psa.flightapp.dto.ReservationRequest;
import com.psa.flightapp.entities.Reservation;

public interface ReservationService {
	Reservation bookFlight(ReservationRequest request);
}
