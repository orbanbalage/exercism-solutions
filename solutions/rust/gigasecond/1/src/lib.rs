use time::PlainDateTime as DateTime;
use time::Duration;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    //todo!("What time is a gigasecond later than {start}");
    let seconds = 1_000_000_000;
    let seconds_duration = Duration::new(seconds, 0);
    start + seconds_duration
}
