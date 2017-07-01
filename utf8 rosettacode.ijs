u1 =. 'A';'ö';'Ж';'€';'𝄞'
u2 =. 'A','ö','Ж','€','𝄞'
encoding1 =. a.&i. each u1
encoding2 =. a. i. u2
decoding1 =. a.&i.inv each encoding1
decoding2 =. a. i.inv encoding2
tohex =. '0123456789abcdef' {~ 16 16 #: ]

('Unicode';'Bytes';'Hex';'Unicode') , |: u1 , encoding1 , (tohex each encoding1) ,: decoding1
