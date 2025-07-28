if (Test-Path "out") {
    Remove-Item -Path "out\*" -Recurse -Force
} else {
    New-Item -Path "out" -ItemType Directory -Force
}

static-i18n --locales en --locales pl --output-dir out --fileFormat yml src

Copy-Item -Path "src\assets" -Destination "out\assets" -Recurse -Force

Copy-Item -Path "src\cv.css" -Destination "out\cv.css" -Force
