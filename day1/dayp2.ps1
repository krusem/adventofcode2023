function day1($f) {
  $a = [IO.File]::ReadAllLines($f).split("`n")
  $t = 0
    $a | %{
    $m = $_ -replace "oneight", "18"
    $m = $m -replace "threeight", "38"
    $m = $m -replace "nineight", "98"
    $m = $m -replace "fiveight", "58"
    $m = $m -replace "sevenine", "79"
    $m = $m -replace "eightwo", "82"
    $m = $m -replace "eighthree", "83"
    $m = $m -replace "twone", "21"

    $m = $m -replace "one", '1'
    $m = $m -replace "two", '2'
    $m = $m -replace "three", '3'
    $m = $m -replace "four", '4'
    $m = $m -replace "five", '5'
    $m = $m -replace "six", '6'
    $m = $m -replace "seven", '7'
    $m = $m -replace "eight", '8'
    $m = $m -replace "nine", '9'
    $m = $m -replace "[^0-9]" , ''
    $t += [int]::Parse($m[0])*10 + [int]::Parse($m[-1])
  }
  $t
}
