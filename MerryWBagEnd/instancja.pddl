(define (problem p1)
	(:domain bagend)
	(:objects
		zielony czerwony pomaranczowy rozowy niebieski - color
		za rb pc nc zd cd ne ze nf1 nf2 zh ch pi ni - ball
		A B C D E F G H I - room
		k1 k2 k3 k4 k5 k6 k7 k8 - block
		f1 f2 f3 f4 f5 f6 f7 f8 f9 - field
	)
	(:init
		(passage A B pomaranczowy)
		(passage A C czerwony)
		(passage C A czerwony)
		(passage B D pomaranczowy)
		(passage C E zielony)
		(passage E C zielony)
		(passage D F zielony)
		(passage F D zielony)
		(passage E F niebieski)
		(passage F E niebieski)
		(passage F G rozowy)
		(passage F I niebieski)
		(passage I F niebieski)
		(passage E H czerwony)
		(passage H E czerwony)
		(passage H I niebieski)
		(passage I H niebieski)
		(ball-color za zielony)
		(ball-color rb rozowy)
		(ball-color pc pomaranczowy)
		(ball-color nc niebieski)
		(ball-color zd zielony)
		(ball-color cd czerwony)
		(ball-color ne niebieski)
		(ball-color ze zielony)
		(ball-color nf1 niebieski)
		(ball-color nf2 niebieski)
		(ball-color zh zielony)
		(ball-color ch czerwony)
		(ball-color pi pomaranczowy)
		(ball-color ni niebieski)
		(ball-in za A)
		(ball-in rb B)
		(ball-in pc C)
		(ball-in nc C)
		(ball-in zd D)
		(ball-in cd D)
		(ball-in ne E)
		(ball-in ze E)
		(ball-in nf1 F)
		(ball-in nf2 F)
		(ball-in zh H)
		(ball-in ch H)
		(ball-in pi I)
		(ball-in ni I)
		(merry-in F)
		(blockade-in A)
		
		(next-to f1 f2)
		(next-to f2 f3)
		(next-to f4 f5)
		(next-to f5 f6)
		(next-to f7 f8)
		(next-to f8 f9)
		(next-to f1 f4)
		(next-to f4 f7)
		(next-to f2 f5)
		(next-to f5 f8)
		(next-to f3 f6)
		(next-to f6 f9)
		(number-on k5 f1)
		(number-on k4 f2)
		(number-on k1 f3)
		(number-on k8 f4)
		(number-on null f5)
		(number-on k3 f6)
		(number-on k7 f7)
		(number-on k2 f8)
		(number-on k6 f9)
	)
	(:goal
		(and
			(merry-in G)
			(number-on k1 f1)
			(number-on k2 f2)
			(number-on k3 f3)
			(number-on k4 f4)
			(number-on k5 f5)
			(number-on k6 f6)
			(number-on k7 f7)
			(number-on k8 f8)
			(number-on null f9)
		)
	)
)
