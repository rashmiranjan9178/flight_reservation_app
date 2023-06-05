package com.psa.flightapp.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.psa.flightapp.dto.ReservationRequest;
import com.psa.flightapp.entities.Flight;
import com.psa.flightapp.entities.Reservation;
import com.psa.flightapp.repositories.FlightRepository;
import com.psa.flightapp.services.ReservationService;
import com.psa.flightapp.utilities.EmailUtil;
import com.psa.flightapp.utilities.PdfGenerator;

@Controller
public class ReservationController {
	
	private static String filePath="C:\\Users\\rashm\\Downloads\\flight_reservation_app_6\\src\\tickets\\booking";
	@Autowired
	private EmailUtil emailUtil;
	
	@Autowired
	private FlightRepository flightRepo;
	
	@Autowired
	private ReservationService reservationService;
	
	@RequestMapping("/showCompleteReservation")
	public String completeReservation(@RequestParam("flightId") Long flightId,ModelMap modelMap) {
		System.out.println(flightId);
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
		modelMap.addAttribute("flights", flight);
		return "showCompleteReservation";
	}
	
	@RequestMapping("/confirmRegistration")
	public String confirmRegistration(ReservationRequest request,ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(request);
		PdfGenerator pdf = new PdfGenerator();
		pdf.generatePDF(filePath+reservation.getId()+".pdf", reservation.getPassenger().getFirstName(), reservation.getPassenger().getEmail(), reservation.getPassenger().getPhone(), reservation.getFlight().getOperatingAirlines(), reservation.getFlight().getDateOfDeparture(), reservation.getFlight().getDepartureCity(), reservation.getFlight().getArrivalCity());
		modelMap.addAttribute("reservationId", reservation.getId());
		EmailUtil util = new EmailUtil();
		String attachment = filePath+reservation.getId()+".pdf";
		emailUtil.sendItinerary(request.getEmail(), attachment);
		return "finalConfirmation";
	}
}
