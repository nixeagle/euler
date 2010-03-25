class Fixnum
  def lychrel?
    num_i = self
    num_s = num_i.to_s
    50.times do
      num_i = num_i + num_s.reverse.to_i
      num_s = num_i.to_s
      return false if num_s == num_s.reverse
    end
    true
  end
end

#~ t=Time.now
#~ 20.times {
  p (1..10_000).select(&:lychrel?).size
#~ }
#~ f=Time.now
#~ p (f-t)/20
