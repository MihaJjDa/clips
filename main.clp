(deftemplate question
	(slot category (type SYMBOL) (default ?NONE))
	(slot text (type STRING) (default ?NONE))
	(multislot values (type SYMBOL) (default ?NONE))
)


(deffunction ask-question (?question)
	(printout t (fact-slot-value ?question text) crlf)
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer)))
	(if (eq ?answer break)
		then (assert (break)))
	(while (and (not (member ?answer (fact-slot-value ?question values))) (not (eq ?answer break))) do
		(bind ?answer (read))
		(if (lexemep ?answer)
			then (bind ?answer (lowcase ?answer)))
		(if (eq ?answer break)
			then (assert (break))))
	(printout t crlf)
	?answer
)

(deffunction start ()
	(reset)
	(load-facts questions.clp)
)


(deffunction main ()
	(load rules.clp)
	(printout t "Выбор отечественной музыкальной рок-группы" crlf "Для ответов используйте 'y' или 'n'" crlf "Для выхода введите 'break'")
	(readline)
	(bind ?answer "")
	(while TRUE
		(start)
		(run)
		(if (eq (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category final)))) y) then
			(exit 0)
		)
	)
)

(defrule break
	(declare (salience 100))
	(break)
	=>
	(if (eq (ask-question (nth 1 (find-fact ((?p question)) (eq ?p:category final)))) y) then
		(exit 0)
	)
	(start)
)


(defrule default
	(declare (salience -100))
	(not (exists (end)))
	=>
	(printout t "Подходящей группы не найдено!" crlf)
)
