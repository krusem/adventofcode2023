function day1($f) {
  $a = [IO.File]::ReadAllLines($f).split("`n")
  $t = 0
    $a | %{
    $m = $_ -replace "[^0-9]" , ''
    $t += [int]::Parse($m[0])*10 + [int]::Parse($m[-1])
  }
  $t
}
