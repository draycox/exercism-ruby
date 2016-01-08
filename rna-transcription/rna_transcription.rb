class Complement
 DNA = { "G" => "C", "C" => "G", "T" => "A", "A" => "U"}
 RNA = DNA.invert

 def self.of_dna nucleotide
   complement_of DNA, nucleotide
 end

 def self.of_rna nucleotide
   complement_of RNA, nucleotide
 end

private
 def self.complement_of conversion_path, nucleotide
   complement = ''
   nucleotide.each_char do |n|
     raise ArgumentError unless conversion_path.keys.include? n
     complement << conversion_path[n]
   end
   complement
 end
end
