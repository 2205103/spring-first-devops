package com.example.dunno.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dunno.entity.Location;
import com.service.LocationService;

@RestController
@RequestMapping("/locations")
public class LocationController {

    @Autowired
    LocationService locationService;
    // Add your controller methods here
    @GetMapping("/getAll")
    public List<Location> getAllLocations() {
        return locationService.getAllLocations();
    }
    
     
    @PostMapping("/create")
    public void addLocation() {
        locationService.createLocation("New Location");
    }
}
