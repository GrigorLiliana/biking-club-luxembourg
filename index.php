<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="styles/style.css">
    <title>Biking Club Luxembourg</title>
</head>
<body>
<section id="landing">
<div class="lang">
        <a href="#landing">
            <img src="assets/united-kingdom.png" alt="Select English language"></a>
        <a href="index-de.php">
            <img src="assets/germany.png" alt="Wählen Sie die deutsche Sprache">
        </a>
    </div>
    <h1>Biking Club Luxmbourg</h1>
</section>
<section id="upcoming"></section>
<section id="previous"></section>
<section id="contact">
    <form action="">
        <input type="text" name="name" id="name" placeholder="Name" required>
        <input type="text" name="adress" id="adress" placeholder="Adress" required>
        <textarea name="message" id="message" cols="30" rows="10" placeholder="Message" required></textarea>
        <div class="no-flex">
            <input type="checkbox" name="checkbox" id="checkbox" required>
            <label class="label" for="checkbox">I confirm that I have read and agreed to the
                <a href="terms-and-conditions.html" target="_blank">terms and conditions</a>
            </label>
            <input type="submit" value="SEND">
        </div>
    </form>
</section>
<script src="script.js"></script>
</body>
</html>