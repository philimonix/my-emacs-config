; Citing http://www.emacswiki.org/emacs/WritingRussianWithDvorak:
; "As you know, all the cyrillic InputMethods work in a way that assumes your keyboard is in QWERTY layout. However,
; if you’re using dvorak keyboard layout, you may discover that, for example, cyrillic-jcuken input method can’t work ; properly since all the ascii symbols on your keyboard are mapped to appropriate cyrillic ones according to the
; qwerty->jcuken translation rules.
; Thus, one of the possible solutions is to define your own input method which translate symbols according to
; dvorak->jcuken rules."
;
; Это такой input method, только для Colemak.
; Нужно положить этот файл в ~/.emacs.d и вставить в ~/.emacs строки:
; (load-file "~/.emacs.d/russian-colemak.el")
; (setq default-input-method "russian-colemak")

; За вдохновение спасибо http://bzr.savannah.gnu.org/lh/emacs/trunk/annotate/head:/leim/quail/cyrillic.el 

(quail-define-package
 "russian-colemak" "Russian" "RU" nil
 "ЙЦУКЕН Russian Colemak layout"
 nil t t t t nil nil nil nil nil t)

;;  1! 2" 3№ 4; 5% 6: 7? 8* 9( 0) -_ =+ \/ ёЁ
;;   Й  Ц  У  К  Е  Н  Г  Ш  Щ  З  Х  Ъ
;;    Ф  Ы  В  А  П  Р  О  Л  Д  Ж  Э
;;     Я  Ч  С  М  И  Т  Ь  Б  Ю  .,

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("|" ?/)
 ("`" ?ё)
 ("q" ?й)
 ("w" ?ц)
 ("e" ?у)
 ("r" ?к)
 ("t" ?е)
 ("y" ?н)
 ("u" ?г)
 ("i" ?ш)
 ("o" ?щ)
 ("p" ?з)
 ("[" ?х)
 ("]" ?ъ)
 ("a" ?ф)
 ("s" ?ы)
 ("d" ?в)
 ("f" ?а)
 ("g" ?п)
 ("h" ?р)
 ("j" ?о)
 ("k" ?л)
 ("l" ?д)
 (";" ?ж)
 ("'" ?э)
 ("\\" ?\\)
 ("z" ?я)
 ("x" ?ч)
 ("c" ?с)
 ("v" ?м)
 ("b" ?и)
 ("n" ?т)
 ("m" ?ь)
 ("," ?б)
 ("." ?ю)
 ("/" ?.)
 ("!" ?!)
 ("@" ?\")
 ("#" ?№)
 ("$" ?\;)
 ("%" ?%)
 ("^" ?:)
 ("&" ??)
 ("*" ?*)
 ("(" ?()
 (")" ?))
 ("_" ?_)
 ("+" ?+)
 ("~" ?Ё)
 ("Q" ?Й)
 ("W" ?Ц)
 ("E" ?У)
 ("R" ?К)
 ("T" ?Е)
 ("Y" ?Н)
 ("U" ?Г)
 ("I" ?Ш)
 ("O" ?Щ)
 ("P" ?З)
 ("{" ?Х)
 ("}" ?Ъ)
 ("A" ?Ф)
 ("S" ?Ы)
 ("D" ?В)
 ("F" ?А)
 ("G" ?П)
 ("H" ?Р)
 ("J" ?О)
 ("K" ?Л)
 ("L" ?Д)
 (":" ?Ж)
 ("\"" ?Э)
 ("|" ?|)
 ("Z" ?Я)
 ("X" ?Ч)
 ("C" ?С)
 ("V" ?М)
 ("B" ?И)
 ("N" ?Т)
 ("M" ?Ь)
 ("<" ?Б)
 (">" ?Ю)
 ("?" ?,))


