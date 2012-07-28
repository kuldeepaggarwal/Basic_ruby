class Shapes
  def area(*args)
    if args.length == 1
      3.14 * args[0].to_f * args[0].to_f
    elsif args.length == 2
      args[0].to_f * args[1].to_f
    else
      a = args[0].to_f
      b = args[1].to_f
      c = args[2].to_f
      s = (a + b + c) / 2.0
      Math.sqrt(s * (s - a) * (s - b) * (s - c))
    end
  end
end