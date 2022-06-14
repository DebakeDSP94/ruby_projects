
def encode_msg(msg, shift)
  msg = msg.split('')
  msg_new = []
  if shift >= 0
    pos_shift_encode(msg, shift, msg_new)
  else
    neg_shift_encode(msg, shift, msg_new)
  end
  msg_out = msg_new.join('')
  $stdout.puts("The encoded message is: #{msg_out}")
end

def pos_shift_encode(msg, shift, msg_new)
  msg.each do |char|
    ascii_code = char.ord
      if (ascii_code >= 65 && ascii_code <= 90) 
        ascii_code += shift % 26
        if ascii_code > 90
          ascii_code -= 26
        end
      elsif (ascii_code >= 97 && ascii_code <= 122)
        ascii_code += shift % 26
        if ascii_code > 122
          ascii_code -= 26
        end
        msg_new << ascii_code.chr
      end
  end
end

def neg_shift_encode(msg, shift, msg_new)
  shift = shift.abs
  msg.each do |char|
    ascii_code = char.ord
      if (ascii_code >= 65 && ascii_code <= 90) 
        ascii_code -= shift % 26
        if ascii_code < 65
          ascii_code += 26
        end
      elsif (ascii_code >= 97 && ascii_code <= 122)
        ascii_code -= shift % 26 
        if ascii_code < 97
           ascii_code += 26
        end
      end
    msg_new << ascii_code.chr
  end
end

msg = "hello World!"
shift = 12

encode_msg(msg, shift)

msg = "Wow, what a great string!"


encode_msg(msg, -27)