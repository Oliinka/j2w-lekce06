[#ftl]
<!--
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>
        <!--
        Formulář bude obsahovat:
        * výběr z druhů čokolády, např.: mléčná, bíla, hořká (select)
        * Jméno a příjmení (input)
        * e-mail – volitelný údaj (input)
        * souhlas s obchodními podmínkami (check box)
        -->

[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Obchůdek pro mlsné jazýčky: čokoláda</title>
    <link rel="stylesheet" href="/style.css"/>
</head>
<body>
<div class="container">
    <form class="kosik" action="/cokolada" method="post">
        <h1>Objednávka čokolády</h1>
        <label for="zbozi" class="radek">Zboží:</label>

        <!-- tohle je pole nebo mapa-->
        [@spring.formSingleSelect path="form.zbozi" options={
        "": "",
        "1": "Mléčná čokoláda",
        "2": "Bílá čokoláda",
        "3": "Hořká čokoláda"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Množství:</div>
        <div class="skupina">
            <div>
                <input id="objem1" type="radio" name="objem" value="OBJEM_200G"/>
                <label for="objem1">200 g</label>
            </div>
            <div>
                <input id="objem2" type="radio" name="objem" value="OBJEM_500G"/>
                <label for="objem2">500 g</label>
            </div>
            <div>
                <input id="objem3" type="radio" name="objem" value="OBJEM_1000G"/>
                <label for="objem3">1000 g</label>
            </div>
        </div>
        [@spring.bind "form.objem"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="jmeno" class="radek">Jméno a příjmení:</label>
        [@spring.formInput path="form.jmeno" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.obchodniPodminky" /]
            <label for="obchodniPodminky">Souhlasím s obchodními podmínkami</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">
            [@spring.formCheckbox path="form.newsletter" /]
            <label for="newsletter">Souhlasím se zasíláním newsletterů</label>
        </div>
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Objednat</button>
        </div>
    </form>
</div>
</body>
</html>
