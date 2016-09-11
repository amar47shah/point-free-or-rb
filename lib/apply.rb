# For convenience:
#   proc._(x)
# instead of
#   proc.call(x)
class Proc
  def _(arg)
    call(arg)
  end
end
