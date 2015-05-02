package main;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class Logic {

	public static String monYAT(String url) {
			System.out.println(url);
			String responseCode = "000";
			URL obj1;
			try {
				obj1 = new URL(url);
				long currentTimeMillis = System.currentTimeMillis();
				HttpURLConnection con = (HttpURLConnection) obj1.openConnection();
				con.setRequestMethod("GET");
				con.setRequestProperty("User-Agent", "Mozilla/5.0");
				responseCode = con.getResponseCode()+"";
				long currentTimeMillis2 = System.currentTimeMillis();
				Long responseTimeInMilisec=currentTimeMillis2-currentTimeMillis;
				System.out.println(responseCode+":::"+(responseTimeInMilisec));
				
			} catch (MalformedURLException e1) {
				responseCode="MalformedURLException";
			} catch (IOException e1) {
				responseCode="IOException";
			}catch (Exception e1) {
				responseCode=e1.getMessage();
			}
			return responseCode;
		}


	public static String getSearchPageResponse(String url) {
		System.out.println(url);
		String responseObject = "Not changed!!!";
		URL obj1;
		try {
			obj1 = new URL(url);

			HttpURLConnection con = (HttpURLConnection) obj1.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("User-Agent", "Mozilla/5.0");
			int responseCode = con.getResponseCode();

			System.out.println(responseCode);
			if (responseCode == HttpURLConnection.HTTP_OK) {
				BufferedReader in = new BufferedReader(new InputStreamReader(
						con.getInputStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}
				in.close();
				responseObject = response.toString();
			}
			else{
				BufferedReader in = new BufferedReader(new InputStreamReader(
						con.getErrorStream()));
				String inputLine;
				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}
				in.close();
				responseObject =responseCode+"-"+con.getResponseMessage()+response.toString();
			}

		} catch (MalformedURLException e1) {
			responseObject="MalformedURLException";
		} catch (IOException e1) {
			responseObject="IOException";
		}catch (Exception e1) {
			responseObject=e1.getMessage();
		}
		return responseObject;
	}

}
