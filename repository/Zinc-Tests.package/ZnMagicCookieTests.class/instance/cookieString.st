accessing
cookieString
	^'PREF=ID=18ae67ce302b6317:TM=1285696140:LM=1285696140:S=hqroFGlRQR1j4Yhy; expires='
		, (ZnUtils httpDate: DateAndTime now + 7 days)
		, '; path=/; domain=.google.com'