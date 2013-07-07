class CodeKataFour

  team=[]
  File.open(File.dirname(__FILE__) + '/football.dat') do |file|
    while line  = file.gets
      #puts line
      s=line.split(' ')
      goalDifference = (s[6].to_i - s[8].to_i).abs if s.length == 10
      team = s[1], goalDifference if team[1].nil? || team[1] > goalDifference 

    end
    puts team.inspect
end
end