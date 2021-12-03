pub fn is_leap_year(year: u64) -> bool {
    // on every year that is evenly divisible by 4
    if year % 4 == 0 {
        // except every year that is evenly divisible by 100,
        // unless the year is also evenly divisible by 400
        if year % 100 == 0 && year % 400 != 0 {
            return false;
        }
        return true;
    }
    false
}
