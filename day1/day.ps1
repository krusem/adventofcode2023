function day1($a) {
  $t = 0
  $a | %{
    $m = $_ -replace "[^0-9]" , ''
    $t += [int]::Parse($m[0])*10 + [int]::Parse($m[-1])
  }
  $t
}
