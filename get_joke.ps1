try {
    $response = Invoke-RestMethod -Uri 'https://v2.jokeapi.dev/joke/Any?blacklistFlags=nsfw' -ErrorAction Stop
    if ($response.type -eq 'single') {
        Write-Host $response.joke
    } else {
        Write-Host $response.setup
        Write-Host $response.delivery
    }
    Read-Host -Prompt 'Press Enter to continue...'
} catch {
    Write-Host 'Error fetching joke: ' $_.Exception.Message
    Read-Host -Prompt 'Press Enter to continue...'
}