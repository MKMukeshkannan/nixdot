{pkgs}: (pkgs.writers.writeRustBin "xforce" {} ''
  fn main() { 
    println!("Yo KO SO"); 
    println!("Yo KO SO"); 
    println!("Yo KO SO"); 
  } 

'')
