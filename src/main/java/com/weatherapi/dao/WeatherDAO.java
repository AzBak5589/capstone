package com.weatherapi.dao;

import java.io.IOException;

public interface WeatherDAO {
	
	public String getWeatherDataCity(String city) throws IOException;
	
	public String getWeatherDataCityCountry(String city, String country) throws IOException;
	
}
