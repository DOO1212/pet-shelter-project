package com.shelter.app.donation;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface DonationDAO {
	
	public int createDonation(DonationVO donationVO) throws Exception;
	
	public DonationVO findDonation(String orderId) throws Exception;
	
	public int completeDonation(DonationVO donationVO) throws Exception;

}
