package com.example.dunno.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dunno.entity.Location;
import com.example.dunno.repository.LocationRepository;

@Service
public class LocationService {

    @Autowired
    private LocationRepository locationRepository;  // Inject Repository, not Entity

    public Location createLocation(String name) {
        Location location = new Location(name);
        return locationRepository.save(location);  // Save to database
    }

    public List<Location> getAllLocations() {  // Return List, not single
        return locationRepository.findAll();  // Get all from database
    }
}