def is_word_palindrome(word)
    
    chars = word.downcase.split('')
    length = chars.length

    #midpoint character idx of input word
    if length % 2 == 1
        midpoint_char = (length - 1) / 2
    else 
        midpoint_char = length / 2
    end

    #build list of characters forwards to midpoint
    idx_fwd = 0
    forward_lst = []
    while idx_fwd <= midpoint_char
        forward_lst << chars[idx_fwd]
        idx_fwd += 1
    end

    #build list of characters backwards to midpoint character
    backward_lst = []
    idx_bwd = length - 1
    while idx_bwd >= midpoint_char
        backward_lst << chars[idx_bwd]
        idx_bwd -= 1
    end   
    
    return forward_lst == backward_lst
end


def is_string_palindrome(text_string)
    #clean up text string - remove punctuation and spaces


    #midpoint character idx of input string


    #build list of characters forwards to midpoint character


    #build list of characters backwards to midpoint character

    
    return forward_lst == backward_lst
end

