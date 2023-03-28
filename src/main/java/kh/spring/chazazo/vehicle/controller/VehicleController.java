package kh.spring.chazazo.vehicle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kh.spring.chazazo.location.model.dto.LocationReqDto;
import kh.spring.chazazo.location.model.service.LocationService;
import kh.spring.chazazo.vehicle.model.dto.VehicleReqDto;
import kh.spring.chazazo.vehicle.model.dto.VehicleRespDto;
import kh.spring.chazazo.vehicle.model.service.VehicleService;


@RestController
@RequestMapping
public class VehicleController {
	
	@Autowired
	private VehicleService vService;
	private LocationService lService;
	
	@GetMapping("/carlist")
	public ModelAndView searchVehicle(ModelAndView mv) {
		// 메인페이지 / 예약페이지 / 결제페이지 차량 정보 검색
		mv.addObject("carlist", vService.selectList());
		mv.setViewName("reservation/carlist");
		return mv;
	}
	
	
	@GetMapping("/carlist/{idx}")
	public ModelAndView viewVehicle(ModelAndView mv, @PathVariable int idx) {
		// 차량 정보랑 리뷰랑 동시에
	
		VehicleRespDto vResp = vService.selectOne(idx);
		mv.addObject("car", vResp);
		
		List<VehicleRespDto> carlist = vService.selectDetails(idx);
		
		mv.addObject("carlist", carlist);
		mv.setViewName("reservation/details");
		
		
		List<LocationReqDto> LocationList =lService.getLocation(idx);
		mv.addObject("locationInfo", vResp);
		
		
		
		
		return mv;
	}
	
	// 관리자
	public ModelAndView viewVehicleList(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
	// 관리자
	public ModelAndView viewVehicleOne(ModelAndView mv) {
		// 관리자 페이지 차량 관리 / 예약, 결제 페이지 차량 정보 출력
		return mv;
	}
	// 관리자
	public ModelAndView viewInsertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView insertVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView viewUpdateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView updateVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	// 관리자
	public ModelAndView deleteVehicle(ModelAndView mv) {
		// 관리자 페이지 차량 관리
		return mv;
	}
	
}
