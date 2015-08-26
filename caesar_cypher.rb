class Caesar

    def initialize(shift)
        alphabet = (("A".."Z").to_a + ("a".."z").to_a).join
        @decrypt = alphabet
        @encrypt = alphabet[shift..-1] + alphabet[0...shift]
    end

    def encrypt(str)
      str.tr(@decrypt, @encrypt)
    end
    
    def decrypt(str)
      str.tr(@encrypt, @decrypt)
    end
end


cipher = Caesar.new(3)
cipher = cipher.encrypt("abc") #=> "def"
puts cipher

cipher2 = Caesar.new(-3)
cipher2 = cipher2.encrypt("ABC") #=> "xyz"
puts cipher2