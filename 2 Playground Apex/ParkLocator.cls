public class ParkLocator {
    public static List<String> country(string country){
        ParkService.ParksImplPort parkservice = new parkservice.ParksImplPort();
        return parkservice.byCountry(country);
    }

}