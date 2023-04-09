Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer

$Names = $speak.GetInstalledVoices().VoiceInfo.name
Foreach ($Name in $Names){
$Name
$speak.SelectVoice($Name)
$speak.Speak($Name)
}