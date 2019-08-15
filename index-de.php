<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="styles/style.css">
    <title>Fahrradclub Luxemburg</title>
</head>
<body>
<section id="landing">
    <div class="lang">
        <a href="index.php">
            <img src="assets/united-kingdom.png" alt="Select English language"></a>
        <a href="#landing">
            <img src="assets/germany.png" alt="Wählen Sie die deutsche Sprache">
        </a>
    </div>

    <h1>Fahrradclub Luxemburg</h1>
</section>
<section id="upcoming"></section>
<section id="previous"></section>
<section id="contact">
<form action="">
    <input type="text" name="name" id="name" placeholder="Name" required>
    <input type="text" name="adress" id="adress" placeholder="Anschrift" required>
    <textarea name="message" id="message" cols="30" rows="10" placeholder="Nachricht" required></textarea>
    <div class="no-flex">
        <input type="checkbox" name="checkbox" id="checkbox" required>
        <label class="label" for="checkbox">Ich bestätige, die Allgemeinen <a href="terms-and-conditions-de.html" target="_blank">Geschäftsbedingungen</a> gelesen zu haben und ihnen zuzustimmen</label>
        <input type="submit" value="SENDEN">
    </div>
</form>
</section>
<script src="script.js"></script>
</body>
</html>