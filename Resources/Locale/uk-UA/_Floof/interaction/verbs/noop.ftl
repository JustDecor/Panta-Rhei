interaction-LookAt-name = Подивитися
interaction-LookAt-description = Вдивляйтеся в безодню, і вона вдивлятиметься у відповідь.
interaction-LookAt-success-self-popup = Ви дивитеся на {THE($target)}.
interaction-LookAt-success-target-popup = Ви відчуваєте, як {THE($user)} дивиться на вас...
interaction-LookAt-success-others-popup = {THE($user)} дивиться на {THE($target)}.

# Створено так, щоб це не бачили інші, лише ви та ваша ціль. Відтворює легкий унікальний звук, щоб привернути увагу того, на кого дивляться.
interaction-CheckOut-name = Оцінити
interaction-CheckOut-description = Дозволяє непомітно оцінити когось, лише ви та ця людина знатимете, що ви це зробили.
interaction-CheckOut-success-self-popup = Ви уважно розглядаєте {THE($target)}.
interaction-CheckOut-success-target-popup = Вам здається, що {THE($user)} може вас розглядати...

interaction-Hug-name = Обійняти
interaction-Hug-description = Один обійм на день тримає подалі психологічні жахіття, які ви не здатні осягнути.
interaction-Hug-success-self-popup = Ви обіймаєте {THE($target)}.
interaction-Hug-success-target-popup = {THE($user)} обіймає вас.
interaction-Hug-success-others-popup = {THE($user)} обіймає {THE($target)}.

interaction-Pet-name = Погладити
interaction-Pet-description = Погладьте свого колегу, щоб зменшити його стрес.
interaction-Pet-success-self-popup = Ви гладите {THE($target)} по {POSS-ADJ($target)} голові.
interaction-Pet-success-target-popup = {THE($user)} гладить вас по голові.
interaction-Pet-success-others-popup = {THE($user)} гладить {THE($target)}.

interaction-KnockOn-name = Постукати
interaction-KnockOn-description = Постукайте по цілі, щоб привернути увагу.
interaction-KnockOn-success-self-popup = Ви стукаєте по {THE($target)}.
interaction-KnockOn-success-target-popup = {THE($user)} стукає по вас.
interaction-KnockOn-success-others-popup = {THE($user)} стукає по {THE($target)}.

interaction-Rattle-name = Погриміти
interaction-Rattle-success-self-popup = Ви гримите {THE($target)}.
interaction-Rattle-success-target-popup = {THE($user)} гримить вами.
interaction-Rattle-success-others-popup = {THE($user)} гримить {THE($target)}.

# Нижче містяться умови для випадку, якщо користувач тримає предмет
interaction-WaveAt-name = Помахати
interaction-WaveAt-description = Помахайте цілі. Якщо ви тримаєте предмет, ви помахаєте ним.
interaction-WaveAt-success-self-popup = Ви махаєте {$hasUsed ->
    [false] до {THE($target)}.
    *[true] своїм {$used} до {THE($target)}.
}
interaction-WaveAt-success-target-popup = {THE($user)} махає {$hasUsed ->
    [false] вам.
    *[true] {POSS-ADJ($user)} {$used} вам.
}
interaction-WaveAt-success-others-popup = {THE($user)} махає {$hasUsed ->
    [false] до {THE($target)}.
    *[true] {POSS-ADJ($user)} {$used} до {THE($target)}.
}

interaction-PointGunAt-name = Навести зброю
interaction-PointGunAt-description = Наведіть свою зброю на когось, ймовірно, у загрозливій манері.
interaction-PointGunAt-success-self-popup = Ви наводите зброю на {THE($target)}.
interaction-PointGunAt-success-target-popup = {THE($user)} наводить {POSS-ADJ} зброю на вас!
interaction-PointGunAt-success-others-popup = {THE($user)} наводить {POSS-ADJ} зброю на {THE($target)}!

interaction-Kiss-name = Поцілувати
interaction-Kiss-description = Поцілунок, щоб розтопити біль. Потребує вільного рота.
interaction-Kiss-success-self-popup = Ви цілуєте {THE($target)}.
interaction-Kiss-success-target-popup = {THE($user)} цілує вас.
interaction-Kiss-success-others-popup = {THE($user)} цілує {THE($target)}.

interaction-Lick-name = Лизнути
interaction-Lick-description = Лизніть свого колегу. Потребує вільного рота.
interaction-Lick-success-self-popup = Ви лижете {THE($target)}.
interaction-Lick-success-target-popup = {THE($user)} лиже вас.
interaction-Lick-success-others-popup = {THE($user)} лиже {THE($target)}.
