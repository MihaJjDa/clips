(defrule qrap
	(not (rap ?))
	=>
	(assert (rap (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category rap))))))
)

(defrule qfast_songs
	(not (fast_songs ?))
	=>
	(assert (fast_songs (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category fast_songs))))))
)

(defrule qmid_songs
	(not (mid_songs ?))
	=>
	(assert (mid_songs (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category mid_songs))))))
)

(defrule qslow_songs
	(not ( slow_songs ?))
	=>
	(assert ( slow_songs(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category slow_songs ))))))
)

(defrule qsolo
	(not ( solo?))
	=>
	(assert ( solo(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category solo))))))
)

(defrule qlove_text
	(not ( love_text?))
	=>
	(assert ( love_text(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category love_text))))))
)
(defrule qsoc_text
	(not ( soc_text?))
	=>
	(assert ( soc_text(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category soc_text))))))
)
(defrule qfreedom_text
	(not ( freedom_text?))
	=>
	(assert ( freedom_text(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category freedom_text))))))
)
(defrule qfantasy_text
	(not ( fantasy_text?))
	=>
	(assert ( fantasy_text(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category fantasy_text ))))))
)

(defrule qfilo_text
	(not (filo_text ?))
	=>
	(assert (filo_text (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category filo_text))))))
)

(defrule qfolk
	(not ( folk? ))
	=>
	(assert ( folk(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category folk))))))
)
(defrule qakust
	(not ( akust? ))
	=>
	(assert ( akust(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category akust))))))
)
(defrule qscream
	(not ( scream?))
	=>
	(assert ( scream(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category scream))))))
)
(defrule qsymph
	(not ( symph?))
	=>
	(assert ( symph(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category symph))))))
)
(defrule qdance
	(not ( dance ?))
	=>
	(assert ( dance(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category dance ))))))
)

(defrule qhard
	(not ( hard?))
	=>
	(assert ( hard(ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category hard))))))
)

(defrule sniper
    (fast_songs y)
    (slow_songs y)
    (love_text y)
    (soc_text y)
    (fantasy_text y)
    (folk n)
    (akust y)
    (scream n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Ночные снайперы'." crlf)
	(assert (end))
)

(defrule kish
    (rap n)
    (fast_songs y)
    (slow_songs y)
    (solo n)
    (fantasy_text y)
    (folk y)
    (scream y)
    (symph n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Король и шут'." crlf)
	(assert (end))
)

(defrule piknik
    (rap n)
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (fantasy_text y)
    (filo_text y)
    (folk y)
    (akust n)
    (scream y)
    (symph n)
    (dance n)
    (hard n)

    =>
	(printout t "Вам может понравиться творчество группы 'Пикник'." crlf)
	(assert (end))
)

(defrule splin
    (rap y)
    (slow_songs y)
    (love_text y)
    (freedom_text n)
    (fantasy_text y)
    (filo_text y)
    (folk y)
    (scream n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Сплин'." crlf)
	(assert (end))
)

(defrule alisa
    (rap n)
    (fast_songs y)
    (mid_songs y)
    (slow_songs y)
    (solo y)
    (love_text y)
    (soc_text y)
    (fantasy_text y)
    (filo_text y)
    (folk y)
    (akust n)
    (scream n)
    (symph n)
    (dance y)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Алиcа'." crlf)
	(assert (end))
)

(defrule ddt
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (filo_text y)
    (folk y)
    (scream n)
    (symph n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'ДДТ'." crlf)
	(assert (end))
)

(defrule ie2517
    (rap y)
    (fast_songs y)
    (mid_songs y)
    (love_text y)
    (soc_text y)
    (fantasy_text n)
    (filo_text y)
    (folk n)
    (scream y)
    (symph n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы '25/17'." crlf)
	(assert (end))
)

(defrule noize
    (rap y)
    (fast_songs y)
    (love_text y)
    (soc_text y)
    (fantasy_text n)
    (folk n)
    (akust y)
    (scream y)
    (symph n)
    (dance y)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Noize MC'." crlf)
	(assert (end))
)

(defrule kino
    (rap n)
    (mid_songs y)
    (solo y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (folk n)
    (akust y)
    (scream n)
    (symph n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Кино'." crlf)
	(assert (end))
)

(defrule chaif
    (rap n)
    (fast_songs y)
    (mid_songs y)
    (slow_songs y)
    (solo y)
    (love_text y)
    (freedom_text y)
    (fantasy_text n)
    (folk y)
    (akust y)
    (scream n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Чайф'." crlf)
	(assert (end))
)

(defrule chizh
    (rap n)
    (fast_songs y)
    (slow_songs y)
    (solo y)
    (love_text y)
    (freedom_text y)
    (fantasy_text n)
    (folk y)
    (akust y)
    (scream n)
    (symph n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Чиж и Ко'." crlf)
	(assert (end))
)

(defrule akvarium
    (rap n)
    (fantasy_text y)
    (filo_text y)
    (folk n)
    (akust y)
    (scream n)
    (symph y)
    (dance n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Аквариум'." crlf)
	(assert (end))
)

(defrule visokos
    (rap n)
    (mid_songs y)
    (solo n)
    (love_text y)
    (fantasy_text n)
    (filo_text y)
    (folk n)
    (akust y)
    (scream n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Високосный год'." crlf)
	(assert (end))
)

(defrule zemfira
    (mid_songs y)
    (slow_songs y)
    (solo n)
    (love_text y)
    (fantasy_text n)
    (folk n)
    (akust n)
    (scream n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Земфира'." crlf)
	(assert (end))
)

(defrule murakami
    (fast_songs y)
    (mid_songs y)
    (solo n)
    (soc_text n)
    (freedom_text n)
    (fantasy_text n)
    (folk n)
    (akust n)
    (scream n)
    (symph n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Мураками'." crlf)
	(assert (end))
)

(defrule louna
    (rap y)
    (fast_songs y)
    (slow_songs n)
    (solo y)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (filo_text y)
    (folk n)
    (akust n)
    (scream y)
    (symph n)
    (dance n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'LOUNA'." crlf)
	(assert (end))
)

(defrule lumen
    (rap n)
    (fast_songs n)
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (fantasy_text n)
    (filo_text y)
    (folk n)
    (scream n)
    (symph n)
    =>
	(printout t "Вам может понравиться творчество группы 'Lumen'." crlf)
	(assert (end))
)

(defrule hatters
    (fast_songs y)
    (love_text y)
    (fantasy_text n)
    (filo_text n)
    (folk y)
    (akust n)
    (scream y)
    (symph n)
    =>
	(printout t "Вам может понравиться творчество группы 'Шляпники'." crlf)
	(assert (end))
)

(defrule kukry
    (rap n)
    (fast_songs y)
    (slow_songs y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (filo_text y)
    (scream n)
    (dance y)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Кукрыниксы'." crlf)
	(assert (end))
)

(defrule knyazz
    (fast_songs y)
    (love_text y)
    (soc_text y)
    (freedom_text n)
    (fantasy_text y)
    (folk y)
    (akust n)
    (scream y)
    (symph n)
    (dance n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Княzz'." crlf)
	(assert (end))
)

(defrule aria
    (rap n)
    (solo y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (fantasy_text y)
    (filo_text y)
    (akust n)
    (symph y)
    (dance n)
    =>
	(printout t "Вам может понравиться творчество группы 'Ария'." crlf)
	(assert (end))
)

(defrule kalinov
    (rap n)
    (fast_songs y)
    (slow_songs y)
    (love_text y)
    (fantasy_text y)
    (filo_text y)
    (folk y)
    (akust n)
    (scream n)
    (symph y)
    (dance n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Калинов мост'." crlf)
	(assert (end))
)

(defrule krem
    (rap n)
    (fast_songs y)
    (slow_songs y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (filo_text y)
    (folk y)
    (akust n)
    (scream n)
    (dance n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Крематорий'." crlf)
	(assert (end))
)

(defrule semb
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (freedom_text y)
    (filo_text y)
    (folk y)
    (scream n)
    (symph n)
    =>
	(printout t "Вам может понравиться творчество группы '7Б'." crlf)
	(assert (end))
)

(defrule agata
    (rap n)
    (fast_songs y)
    (mid_songs y)
    (love_text y)
    (soc_text y)
    (fantasy_text y)
    (filo_text y)
    (akust n)
    (scream y)
    (symph n)
    (dance y)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Агата Кристи'." crlf)
	(assert (end))
)

(defrule affin
    (rap n)
    (mid_songs y)
    (solo n)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (filo_text y)
    (folk y)
    (akust y)
    (scream y)
    (symph y)
    (dance n)
    =>
	(printout t "Вам может понравиться творчество группы 'Аффинаж'." crlf)
	(assert (end))
)

(defrule nogu
    (fast_songs y)
    (mid_songs y)
    (love_text y)
    (soc_text y)
    (fantasy_text n)
    (filo_text y)
    (symph y)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Ногу свело'." crlf)
	(assert (end))
)

(defrule uma
    (rap y)
    (mid_songs y)
    (love_text y)
    (fantasy_text n)
    (filo_text y)
    (scream n)
    (symph y)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Уматурман'." crlf)
	(assert (end))
)

(defrule ner
    (fast_songs y)
    (mid_songs y)
    (love_text y)
    (fantasy_text n)
    (scream y)
    (symph n)
    =>
	(printout t "Вам может понравиться творчество группы 'Нервы'." crlf)
	(assert (end))
)

(defrule bravo
    (rap n)
    (mid_songs y)
    (love_text y)
    (soc_text n)
    (fantasy_text n)
    (akust n)
    (scream n)
    (symph n)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Браво'." crlf)
	(assert (end))
)

(defrule gluki
    (fast_songs y)
    (mid_songs y)
    (love_text y)
    (soc_text y)
    (freedom_text y)
    (filo_text y)
    (scream n)
    (symph n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Смысловые галлюцинации'." crlf)
	(assert (end))
)

(defrule minus
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (freedom_text y)
    (fantasy_text n)
    (scream n)
    (symph n)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Танцы минус'." crlf)
	(assert (end))
)

(defrule grob
    (rap y)
    (fast_songs y)
    (solo n)
    (love_text n)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (filo_text y)
    (scream y)
    (symph n)
    (dance n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Гражданская оборона'." crlf)
	(assert (end))
)

(defrule leningrad
    (fast_songs y)
    (slow_songs n)
    (soc_text y)
    (freedom_text y)
    (fantasy_text n)
    (folk y)
    (akust n)
    (scream y)
    (symph n)
    (hard y)
    =>
	(printout t "Вам может понравиться творчество группы 'Ленинград'." crlf)
	(assert (end))
)

(defrule b2
    (mid_songs y)
    (slow_songs y)
    (love_text y)
    (fantasy_text n)
    (filo_text y)
    (folk y)
    (akust y)
    (scream n)
    (symph y)
    (dance y)
    (hard n)
    =>
	(printout t "Вам может понравиться творчество группы 'Би-2'." crlf)
	(assert (end))
)
