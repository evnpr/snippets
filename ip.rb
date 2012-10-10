tmd = 0
while 1
  t = Time.now
  tm = t.sec
  if tm%30 == 0
  	tmo = tm
	if tmd == 0
		puts Time.now
		`ipconfig > ip.txt`
		`git add .`
		`git commit -m 'a'`
		`git push origin master`
	end
  	tmd = 1
  end
  if !tmo.nil?
	  if tm == tmo + 5
		tmd = 0
	  end
  end
end
