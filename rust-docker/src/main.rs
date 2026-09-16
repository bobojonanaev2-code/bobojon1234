fn main() {
    eprintln!("Hello from Rust inside Docker! 🦀");
    println!("Если вы это видите — всё работает правильно.");

    std::thread::sleep(std::time::Duration::from_millis(100));
}
