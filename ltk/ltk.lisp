#|

 This software is Copyright (c) 2003, 2004, 2005  Peter Herth <herth@peter-herth.de>

 Peter Herth grants you the rights to distribute
 and use this software as governed by the terms
 of the Lisp Lesser GNU Public License
 (http://opensource.franz.com/preamble.html),
 known as the LLGPL.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
|#

#|
All tk commads as of version 8.4 with support information. "-" means not
supported by purpose (look comment), "x" means supported, though some
options may not be supported. 

command      supported comment
bell                 x
bind                 x 
bindtags               modifly the tag list of a widget that describes which events it gets
bitmap               - see image
button               x
canvas               x 
checkbutton          x
clipboard            x (canvas get missing... tricky...)
colors               - constants only
console              - only on some platforms
cursors              x 
destroy              x
entry                x
event                  create and manage virtual events
focus                x focus management functions
font
frame                x
grab                  
grid                 x
image                x 
keysyms              - constants only
label                x
labelframe           x
listbox              x
loadTk               -
lower                x
menu                 x
menubutton           x
message              x 
option               -
options              - only helpfile
pack                 x
panedwindow          x
photo                x 
place                x geometry manager using coordinates
radiobutton          x
raise                x
scale                x 
scrollbar            x
selection
send
spinbox              x
text                 x
tk
tk_bisque            - only for tk backwards compatibility
tk_chooseColor
tk_chooseDirectory
tk_dialog
tk_focusFollowsMouse 
tk_focusNext
tk_focusPrev
tk_getOpenFile       x
tk_getSaveFile       x
tk_menuSetFocus      -
tk_messageBox        x
tk_optionMenu
tk_popup
tk_setPalette        -
tk_textCopy
tk_textCut
tk_textPaste
tkerror              -
tkvars               -
tkwait               
toplevel             x
winfo                x
wm                   x 


support of all config args as keywords to make-instance:

bitmap               
button               x
canvas               x 
checkbutton          x
entry                x
frame                x
image                 
label                x 
labelframe           x 
listbox              x 
menu                  
menubutton            
message                
panedwindow          x
photo                  
radiobutton          x
scale                x
scrollbar            x 
spinbox              x 
text                 x
toplevel             x

|#

(defpackage "LTK"
  (:use "COMMON-LISP"
	#+:cmu "EXT"
	#+:sbcl "SB-EXT"
	)
  (:export "LTKTEST"
	   "*LTK-VERSION*"
	   "*CURSORS*"
	   "*DEBUG-TK*"
	   "*EXIT-MAINLOOP*"
	   "*INIT-WISH-HOOK*"
	   "*MB-ICONS*"
	   "*TK*"
	   "*WISH*"
	   "*WISH-ARGS*"
	   "*WISH-PATHNAME*"
	   "ADD-PANE"
	   "ADD-SEPARATOR"
	   "AFTER"
	   "AFTER-CANCEL"
	   "AFTER-IDLE"	   
	   "APPEND-TEXT"
	   "APPEND-NEWLINE"
	   "ASK-OKCANCEL"
	   "ASK-YESNO"
	   "BACKGROUND"
	   "BELL"
	   "BIND"
	   "BUTTON"
	   "CANVAS"
	   "CANVAS-LINE"
	   "CANVAS-OVAL"
	   "CANVAS-POLYGON"
	   "CANVAS-RECTANGLE"
	   "CANVAS-TEXT"
	   "CANVAS-IMAGE"
	   "CANVAS-ARC"	   
	   "CANVASX"	   
	   "CANVASY"	   
	   "CGET"
	   "CHECK-BUTTON"
	   "CHOOSE-COLOR"
	   "CHOOSE-DIRECTORY"
	   "CLEAR-TEXT"
	   "CLEAR"
	   "CLIPBOARD-APPEND"
	   "CLIPBOARD-CLEAR"
	   "CLIPBOARD-GET"
	   "COMMAND"
	   "CONFIGURE"
	   "CREATE-ARC"
	   "CREATE-BITMAP"
	   "CREATE-IMAGE"
	   "CREATE-LINE"
	   "CREATE-LINE*"
	   "CREATE-MENU2"
	   "CREATE-OVAL"
	   "CREATE-POLYGON"
	   "CREATE-RECTANGLE"
	   "CREATE-TEXT"
	   "CREATE-WINDOW"
	   "DEFARGS"
	   "DEICONIFY"
	   "DESTROY"
	   "DO-EXECUTE"
	   "DO-MSG"
	   "ENTRY"
	   "ENTRY-SELECT"
	   "EXIT-WISH"
	   "EVENT"
	   "EVENT-X"
	   "EVENT-Y"
	   "EVENT-KEYCODE"
	   "EVENT-CHAR"
	   "EVENT-MOUSE-BUTTON"
	   "EVENT-ROOT-X"
	   "EVENT-ROOT-Y"
	   "FOCUS"
	   "FORCE-FOCUS"
	   "FORGET-PANE"
	   "FORMAT-WISH"
	   "FRAME"
	   "GEOMETRY"
	   "GET-OPEN-FILE"
	   "GET-SAVE-FILE"
	   "GRAB"
	   "GRAB-RELEASE"
	   "GRID"
	   "GRID-COLUMNCONFIGURE"
	   "GRID-CONFIGURE"
	   "GRID-ROWCONFIGURE"
	   "ICONIFY"
	   "ICONWINDOW"
	   "IMAGE-LOAD"
	   "IMAGE-SETPIXEL"
	    "INPUT-BOX"
	   "INSERT-OBJECT"
	   "INTERIOR"
	   "ITEMBIND"
	   "ITEMCONFIGURE"
	   "ITEMDELETE"
	   "ITEMMOVE"
	   "ITEMLOWER"
	   "ITEMRAISE"
	   "LABEL"
	   "LABELFRAME"
	   "LISTBOX"
	   "LISTBOX-APPEND"
	   "LISTBOX-CLEAR"
	   "LISTBOX-CONFIGURE"
	   "LISTBOX-GET-SELECTION"
	   "LISTBOX-SELECT"
	   "LOAD-TEXT"
	   "LOWER"
	   "MAINLOOP"

;	   "MAKE-BUTTON"
	   "MAKE-CANVAS"
;	   "MAKE-ENTRY"
	   "MAKE-FRAME"
	   "MAKE-IMAGE"
	   "MAKE-LABEL"
	   "MAKE-MENU"
	   "MAKE-MENUBAR"
	   "MAKE-MENUBUTTON"
	   "MAKE-SCROLLBAR"
	   "MAKE-SCROLLED-CANVAS"
	   "MAKE-TEXT"
	   "MAKE-TOPLEVEL"

	   "MAKE-LINE"
	   "MAKE-OVAL"
	   "MAKE-POLYGON"
	   "MAKE-RECTANGLE"

	   "MASTER"
	   "MAXSIZE"
	   "MENU"
	   "MENUBAR"
	   "MENUBUTTON"
	   "MENUCHECKBUTTON"
	   "MENU-DELETE"
	   "MENURADIOBUTTON"
	   "MESSAGE"
	   "MESSAGE-BOX"
	   
	   "MINSIZE"
	   "MOVE"
	   "NORMALIZE"
	   "ON-CLOSE"
	   "ON-FOCUS"
	   "PACK"
	   "PACK-FORGET"
	   "PACK-PROPAGATE"
	   "PANE-CONFIGURE"
	   "PANED-WINDOW"
	   "PHOTO-IMAGE"
	   "PLACE"
	   "PLACE-FORGET"
	   "POPUP"
	   "POSTSCRIPT"
	   "PROCESS-EVENTS"
	   "RADIO-BUTTON"
	   "RAISE"
	   "READ-EVENT"
	   "SAVE-TEXT"
	   "SCALE"
	   "SCREEN-HEIGHT"
	   "SCREEN-HEIGHT-MM"
	   "SCREEN-MOUSE"
	   "SCREEN-MOUSE-X"
	   "SCREEN-MOUSE-Y"
	   "SCREEN-WIDTH"
	   "SCREEN-WIDTH-MM"
	   "SCROLLBAR"
	   "SCROLLED-CANVAS"
	   "SCROLLED-FRAME"
	   "SCROLLED-LISTBOX"
	   "SCROLLED-TEXT"
	   "SCROLLREGION"
	   "SEE"
	   "SEND-WISH"
	   "SET-COORDS"
	   "SET-COORDS*"
	   "SET-GEOMETRY"
	   "SET-GEOMETRY-WH"
	   "SET-GEOMETRY-XY"
	   "SPINBOX"
	   "START-WISH"
	   "TAG-BIND"
	   "TAG-CONFIGURE"
	   "TEXT"
	   "TEXTBOX"
	   "TKOBJECT"
	   "TOPLEVEL"
	   "VALUE"
	   "WIDGET"
	   "WIDGET-PATH"
	   "WINDOW-HEIGHT"
	   "WINDOW-ID"
	   "WINDOW-WIDTH"
	   "WINDOW-X"
	   "WINDOW-Y"
	   "WITH-LTK"
	   "WITH-REMOTE-LTK"
	   "WITHDRAW"
	   "WM-TITLE"
	   ))

(in-package :ltk)

(defun dbg (fmt &rest args)
  (apply #'format t fmt args)
  (force-output))

;communication with wish
;;; this ist the only function to adapted to other lisps

(defun do-execute (program args &optional (wt nil))
  "execute program with args a list containing the arguments passed to the program
   if wt is non-nil, the function will wait for the execution of the program to return.
   returns a two way stream connected to stdin/stdout of the program"
  #+:clisp (declare (ignore wt))
  (let ((fullstring program))
    (dolist (a args)
      (setf fullstring (concatenate 'string fullstring " " a)))
    #+:cmu (let ((proc (run-program program args :input :stream :output :stream :wait wt)))
             (unless proc
               (error "Cannot create process."))
             (make-two-way-stream
              (ext:process-output proc)
              (ext:process-input proc))
             )
    #+:clisp (let ((proc (ext:run-program program :arguments args :input :stream :output :stream :wait t)))
             (unless proc
               (error "Cannot create process."))
	     proc
             )
    #+:sbcl (let ((proc (sb-ext:run-program program args :input :stream :output :stream :wait wt)))
             (unless proc
               (error "Cannot create process."))
	     (make-two-way-stream 
	      (process-output proc)              
	      (process-input proc))	     
             )
    #+:lispworks (system:open-pipe fullstring :direction :io)
    #+:allegro (let ((proc (excl:run-shell-command
			    #+:mswindows fullstring
			    #-:mswindows (apply #'vector program program args)
			    :input :stream :output :stream :wait wt)))
		 (unless proc
		   (error "Cannot create process."))
		 proc
		 )
    #+:ecl(ext:run-program program args :input :stream :output :stream
:error :output)
     #+:openmcl (let ((proc (ccl:run-program program args :input
:stream :output :stream :wait wt)))
		  (unless proc
		    (error "Cannot create process."))
		  (make-two-way-stream
		   (ccl:external-process-output-stream proc)
		   (ccl:external-process-input-stream proc)))
    ))

(defvar *ltk-version* 0.878)
;;; global var for holding the communication stream
(defvar *wish* nil)

;;; verbosity of debug messages, if true, then all communication
;;; with tk is echoed to stdout
(defvar *debug-tk* t)

(defvar *trace-tk* t)

(defvar *wish-pathname*
  #+freebsd			"wish8.4"
  #+(and sbcl (not freebsd))	"/usr/bin/wish"
  #-(or sbcl freebsd)		"wish")

(defvar *wish-args* '("-name" "LTK"))

(defvar *init-wish-hook* nil)

;;; setup of wish
;;; put any tcl function definitions needed for running ltk here
(defun init-wish ()
  ;; print string readable, escaping all " and \
  ;; proc esc {s} {puts "\"[regsub {"} [regsub {\\} $s {\\\\}] {\"}]\""}
  ;(send-wish "proc esc {s} {puts \"\\\"[regsub -all {\"} [regsub -all {\\\\} $s {\\\\\\\\}] {\\\"}]\\\"\"} ")
  ;(send-wish "proc escape {s} {return [regsub -all {\"} [regsub -all {\\\\} $s {\\\\\\\\}] {\\\"}]} ")
  (send-wish "proc escape {s} {regsub -all {\\\\} $s {\\\\\\\\} s1;regsub -all {\"} $s1 {\\\"} s2;return $s2}")
  ;;; proc senddata {s} {puts "(data \"[regsub {"} [regsub {\\} $s {\\\\}] {\"}]\")"}
  (send-wish "proc senddata {s} {puts \"(:data [escape $s])\";flush stdout}")
  (send-wish "proc senddatastring {s} {puts \"(:data \\\"[escape $s]\\\")\";flush stdout} ")
  (send-wish "proc senddatastrings {strings} {
                 puts \"(:data (\"
 	         foreach s $strings {
                     puts \"\\\"[escape $s]\\\"\"
                     }
                 puts \"))\";flush stdout} ")

  ;;; proc sendevent {s} {puts "(event \"[regsub {"} [regsub {\\} $s {\\\\}] {\"}]\")"}
  ;(send-wish "proc sendevent {s x y keycode char width height root_x root_y} {puts \"(:event \\\"$s\\\" $x $y $keycode $char $width $height $root_x $root_y)\"} ")
  (send-wish "proc sendevent {s x y keycode char width height root_x root_y mouse_button} {puts \"(:event \\\"$s\\\" $x $y $keycode $char $width $height $root_x $root_y $mouse_button)\"} ")
  ;;; proc callback {s} {puts "(callback \"[regsub {"} [regsub {\\} $s {\\\\}] {\"}]\")"}

  ;;; callback structure: (:callback "widgetname")          ;; for non-parameter callbacks
  ;;;                     (:callback "widgetname" val)      ;; wideget returns non-string value
  ;;;                     (:callback "widgetname" "string") ;; widget returns string value

  (send-wish "proc callback {s} {puts \"(:callback \\\"$s\\\")\";flush stdout} ")
  (send-wish "proc callbackval {s val} {puts \"(:callback \\\"$s\\\" $val)\"} ")
  (send-wish "proc callbackstring {s val} {puts \"(:callback \\\"$s\\\" \\\"[escape $val]\\\")\"} ")

  (dolist (fun *init-wish-hook*)	; run init hook funktions 
    (funcall fun)))

;;; start wish and set *wish*
(defun start-wish ()
  (setf *wish* (do-execute *wish-pathname* *wish-args*))  ; open subprocess
  (init-wish)				               ; perform tcl initialisations
  )

;;; send a string to wish
(defun send-wish (text)
  (when *debug-tk*
    (format t "~A~%" text)
    (force-output))
  (format *wish* "~A~%" text)
  (force-output *wish*))

(defun format-wish (control &rest args)
  "format args using control as control string to wish"
  (when *debug-tk*
    (apply #'format t control args)
    (format t "~%")
    (force-output))
  (apply #'format *wish* control args)
  (format *wish* "~%")
  (force-output *wish*))

;; differences:
;; cmucl/sbcl READ expressions only if there is one more character in the stream, if
;; it is a whitespace its discarded. Lispworks READs the expression as soon as it can
;; be fully read from the stream - no character is discarded
;; so I am printing an additional space after every READable expression printed from tcl,
;; this has to be eaten for read-line from the stream in lispworks (which returns the line
;; ending character, cmucl/sbcl don't)

(defun read-all(stream)
  (let ((c (read-char-no-hang stream nil nil))
        (s (make-array 256 :adjustable t :element-type 'character :fill-pointer 0)))
    (loop
     while c
     do
     (vector-push-extend c s)
     (setf c (read-char-no-hang stream nil nil))
     )
    (coerce s 'simple-string)
    ))

;;; read from wish 
(defun read-wish()
  (let ((*read-eval* nil)
	(*package* (find-package :ltk)))
    (read *wish* nil nil)))

(defvar *event-queue* nil)

(defun can-read (stream)
  (let ((c (read-char-no-hang stream)))
    (loop 
     while (and c
		(member c '(#\Newline #\Return #\Space)))
     do
     (setf c (read-char-no-hang stream)))
    (when c
      (unread-char c stream)
      t)))

(defun read-event (&key (blocking t))
  (or (pop *event-queue*)
      (when (or blocking (can-read *wish*))
        (read-preserving-whitespace *wish* nil nil))))

(defun read-data ()
  (let ((d (read-wish)))
    (if (listp d) ; paranoia check when we do not read a list eg. error messages from wish
	(progn
	  (loop while (not (equal (first d) :data))
	    do
	    (setf *event-queue* (append *event-queue* (list d)))
	    ;;(format t "postponing event: ~a ~%" d) (force-output)
	    (setf d (read-wish)))
					;(format t "readdata: ~s~%" d) (force-output)
	  (second d))
      (format t "read-data:~a~a~%" d (read-all *wish*)))
    ))


(defun read-keyword ()
  (let ((string (read-data)))
    (when (> (length string) 0)
      (values (intern (string-upcase string) :keyword)))))

;;; sanitizing strings: lisp -> tcl (format *wish* "{~a}" string)
;;; in string escaped : {} mit \{ bzw \}  und \ mit \\

(defun replace-char (txt char with)
  (let ((pos (search char txt)))
    (loop
      while pos
      do
      (progn
	;(dbg "txt: ~a -> " txt)
	(setf txt (concatenate 'string (subseq txt 0 pos) with (subseq txt (1+ pos))))
	;(dbg " ~a~&" txt)
	(setf pos (search char txt :start2 (+ pos (length with)))))))
  txt)


(defun tkescape (txt)
  (setf txt (format nil "~a" txt))
  (replace-char (replace-char (replace-char (replace-char (replace-char txt "\\" "\\\\") "$" "\\$") "[" "\\[") "]" "\\]") "\"" "\\\""))
  

;;; tcl -> lisp: puts "$x" mit \ und " escaped
;;;  puts [regsub {"} [regsub {\\} $x {\\\\}] {\"}]

;;; call to convert untility
(defun convert(from to)
  (close (do-execute "convert" (list from to) t)))

;;; table used for callback every callback consists of a name of a widget and
;;; a function to call

(defvar *callbacks* (make-hash-table :test #'equal))

(defvar *counter* 1)			; counter for creating unique widget names
(defvar *after-counter* 1)		; counter for creating unique after callbacks

(defun add-callback (sym fun)
  "create a callback sym is the name to use for storage, fun is the function to call"
  (when *debug-tk*
    (format t "add-callback (~A ~A)~%" sym fun))
  (setf (gethash sym *callbacks*) fun))

(defun remove-callback (sym)
  (when *debug-tk*
    (format t "remove-callback (~A)~%" sym))
  (setf (gethash sym *callbacks*) nil))

(defun callback (sym arg)
  "perform the call of the function associated with sym and the args arg"
  (let ((fun (gethash sym *callbacks*)))
    ;(format t "sym:~A fun:~A~%" sym fun)
    ;(force-output)
    (when fun
      (apply fun arg))))

;;; after <time> msec call function <fun> <label> is used to have
;;; several events scheduled at the same time

(defun after (time fun)
  (let ((name (format nil "after~a" (incf *after-counter*))))
    (ltk::add-callback name
		       (lambda ()
			 (funcall fun)
			 (remove-callback name)))
    (format-wish "senddatastring [after ~a {callback ~A}]" time name)
    (read-data)))

(defun after-idle (fun)
 (let ((name (format nil "afteridle~a" (incf *after-counter*))))
   (ltk::add-callback name
		      (lambda ()
			(funcall fun)
			(remove-callback name)))
   (ltk::format-wish "senddatastring [after idle {callback ~A}]" name)
   (read-data)))

(defun after-cancel (id)
  (format-wish "after cancel ~a" id))

;; tool functions used by the objects

;; incremental counter to create unique numbers

(defun get-counter()
  (incf *counter*))

;; create unique widget name, append unique number to "w"
(defun create-name ()
  (format nil "w~A" (get-counter)))

;; create pathname from master widget <master> and widget name <name>
(defun create-path (master name)
  (let ((master-path (if master
			 (widget-path master)
		       "")))
    (format nil "~A.~A" master-path name)))

  
(eval-when (:compile-toplevel :load-toplevel :execute)
;;; widget class built helper functions

(defun iarg-name (arg) (nth 0 arg))
(defun iarg-key (arg) (nth 1 arg))
(defun iarg-format (arg) (nth 2 arg))
(defun iarg-code (arg) (nth 3 arg))
(defun iarg-comment (arg) (nth 4 arg))

(defparameter *initargs*
  '(
    (button.background Button.background "~@[ -Button.background ~(~a~)~]" button.background "")
    (Button.cursor Button.cursor "~@[ -Button.cursor ~(~a~)~]" Button.cursor "")
    (Button.relief Button.relief "~@[ -Button.relief ~(~a~)~]" Button.relief "")
    (activebackground activebackground "~@[ -activebackground ~(~a~)~]" activebackground "")
    (activeborderwidth activeborderwidth "~@[ -activeborderwidth ~(~a~)~]" activeborderwidth "")
    (activeforeground activeforeground "~@[ -activeforeground ~(~a~)~]" activeforeground "")
    (activerelief activerelief "~@[ -activerelief ~(~a~)~]" activerelief "")
    (activestyle activestyle "~@[ -activestyle ~(~a~)~]" activestyle "")
    (anchor anchor "~@[ -anchor ~(~a~)~]" anchor "")
    (aspect aspect "~@[ -aspect ~(~a~)~]" aspect "")
    (autoseparators autoseparators "~@[ -autoseparators ~(~a~)~]" autoseparators "")
    (background background "~@[ -background ~(~a~)~]" background "")
    (bigincrement bigincrement "~@[ -bigincrement ~(~a~)~]" bigincrement "")
    (bitmap bitmap "~@[ -bitmap ~(~a~)~]" bitmap "")
    (borderwidth borderwidth "~@[ -borderwidth ~(~a~)~]" borderwidth "")
    (class class "~@[ -class ~(~a~)~]" class "")
    (closeenough closeenough "~@[ -closeenough ~(~a~)~]" closeenough "")
    (colormap colormap "~@[ -colormap ~(~a~)~]" colormap "")
    (command command "~@[ -command {callback ~a}~]" (and command 
							   (progn
							      (add-callback (name widget) command)
							      (name widget)))"")
    (cbcommand command "~@[ -command {callbackval ~{~a $~a~}}~]" (and command 
								   (progn
								     (add-callback (name widget) command)
								     (list (name widget) (name widget)))) "")
    (command-radio-button command "~@[ -command {callbackval ~{~a $~a~}}~]" (and command 
									     (progn
									       (add-callback (name widget) command)
									       (list (name widget) (radio-button-variable widget)))) "")
    (command-scrollbar command "~@[ -command {callback ~a}~]" (and command 
								   (progn
								     (add-callback (name widget) command)
								     (name widget)))"")

    (compound compound "~@[ -compound ~(~a~)~]" compound "")
    (confine confine "~@[ -confine ~(~a~)~]" confine "")
    (container container "~@[ -container ~(~a~)~]" container "")
    (cursor cursor "~@[ -cursor ~(~a~)~]" cursor "")
    (default default "~@[ -default ~(~a~)~]" default "")
    (digits digits "~@[ -digits ~(~a~)~]" digits "")
    (direction direction "~@[ -direction ~(~a~)~]" direction "")
    (disabledbackground disabledbackground "~@[ -disabledbackground ~(~a~)~]" disabledbackground "")
    (elementborderwidth elementborderwidth "~@[ -elementborderwidth ~(~a~)~]" elementborderwidth "")
    (exportselection exportselection "~@[ -exportselection ~(~a~)~]" exportselection "")
    (font font "~@[ -font {~a}~]" font "")
    (foreground foreground "~@[ -foreground ~(~a~)~]" foreground "")
    (format format "~@[ -format ~(~a~)~]" format "")
    (from from "~@[ -from ~(~a~)~]" from "")
    (handlepad handlepad "~@[ -handlepad ~(~a~)~]" handlepad "")
    (handlesize handlesize "~@[ -handlesize ~(~a~)~]" handlesize "")
    (height height "~@[ -height ~(~a~)~]" height "")
    (highlightbackground highlightbackground "~@[ -highlightbackground ~(~a~)~]" highlightbackground "")
    (highlightcolor highlightcolor "~@[ -highlightcolor ~(~a~)~]" highlightcolor "")
    (highlightthickness highlightthickness "~@[ -highlightthickness ~(~a~)~]" highlightthickness "")
    (image image "~@[ -image ~(~a~)~]" (and image (name image)) "")
    (increment increment "~@[ -increment ~(~a~)~]" increment "")
    (indicatorOn indicatorOn "~@[ -indicatorOn ~(~a~)~]" indicatorOn "")
    (insertbackground insertbackground "~@[ -insertbackground ~(~a~)~]" insertbackground "")
    (insertborderWidth insertborderWidth "~@[ -insertborderWidth ~(~a~)~]" insertborderWidth "")
    (insertofftime insertofftime "~@[ -insertofftime ~(~a~)~]" insertofftime "")
    (insertontime insertontime "~@[ -insertontime ~(~a~)~]" insertontime "")
    (insertwidth insertwidth "~@[ -insertwidth ~(~a~)~]" insertwidth "")
    (invalidcommand invalidcommand "~@[ -invalidcommand ~(~a~)~]" invalidcommand "")
    (jump jump "~@[ -jump ~(~a~)~]" jump "")
    (justify justify "~@[ -justify ~(~a~)~]" justify "")
    (label label "~@[ -label ~(~a~)~]" label "")
    (labelanchor labelanchor "~@[ -labelanchor ~(~a~)~]" labelanchor "")
    (labelwidget labelwidget "~@[ -labelwidget ~(~a~)~]" labelwidget "")
    (length length "~@[ -length ~(~a~)~]" length "")
    (listvariable listvariable "~@[ -listvariable ~(~a~)~]" listvariable "")
    (maxundo maxundo "~@[ -maxundo ~(~a~)~]" maxundo "")
    (menu menu "~@[ -menu ~(~a~)~]" menu "")
    (offrelief offrelief "~@[ -offrelief ~(~a~)~]" offrelief "")
    (offvalue offvalue "~@[ -offvalue ~(~a~)~]" offvalue "")
    (offset offset "~@[ -offset ~(~a~)~]" offset "")
    (onvalue onvalue "~@[ -onvalue ~(~a~)~]" onvalue "")
    (opaqueresize opaqueresize "~@[ -opaqueresize ~(~a~)~]" opaqueresize "")
    (orient orientation "~@[ -orient ~(~a~)~]" orientation "")
    (overrelief overrelief "~@[ -overrelief ~(~a~)~]" overrelief "")
    (padx padx "~@[ -padx ~(~a~)~]" padx "")
    (pady pady "~@[ -pady ~(~a~)~]" pady "")
    (postcommand postcommand "~@[ -postcommand ~(~a~)~]" postcommand "")
    (readonlybackground readonlybackground "~@[ -readonlybackground ~(~a~)~]" readonlybackground "")
    (relief relief "~@[ -relief ~(~a~)~]" relief "")
    (repeatdelay repeatdelay "~@[ -repeatdelay ~(~a~)~]" repeatdelay "")
    (repeatinterval repeatinterval "~@[ -repeatinterval ~(~a~)~]" repeatinterval "")
    (resolution resolution "~@[ -resolution ~(~a~)~]" resolution "")
    (sashcursor sashcursor "~@[ -sashcursor ~(~a~)~]" sashcursor "")
    (sashpad sashpad "~@[ -sashpad ~(~a~)~]" sashpad "")
    (sashrelief sashrelief "~@[ -sashrelief ~(~a~)~]" sashrelief "")
    (sashwidth sashwidth "~@[ -sashwidth ~(~a~)~]" sashwidth "")
    (screen screen "~@[ -screen ~(~a~)~]" screen "")
    (scrollregion scrollregion "~@[ -scrollregion ~(~a~)~]" scrollregion "")
    (selectbackground selectbackground "~@[ -selectbackground ~(~a~)~]" selectbackground "")
    (selectborderwidth selectborderwidth "~@[ -selectborderwidth ~(~a~)~]" selectborderwidth "")
    (selectcolor selectcolor "~@[ -selectcolor ~(~a~)~]" selectcolor "")
    (selectforeground selectforeground "~@[ -selectforeground ~(~a~)~]" selectforeground "")
    (selectimage selectimage "~@[ -selectimage ~(~a~)~]" selectimage "")
    (selectmode selectmode "~@[ -selectmode ~(~a~)~]" selectmode "")
    (setgrid setgrid "~@[ -setgrid ~(~a~)~]" setgrid "")
    (show show "~@[ -show ~(~a~)~]" show "")
    (showhandle showhandle "~@[ -showhandle ~(~a~)~]" showhandle "")
    (showvalue showvalue "~@[ -showvalue ~(~a~)~]" showvalue "")
    (sliderlength sliderlength "~@[ -sliderlength ~(~a~)~]" sliderlength "")
    (sliderrelief sliderrelief "~@[ -sliderrelief ~(~a~)~]" sliderrelief "")
    (spacing1 spacing1 "~@[ -spacing1 ~(~a~)~]" spacing1 "")
    (spacing2 spacing2 "~@[ -spacing2 ~(~a~)~]" spacing2 "")
    (spacing3 spacing3 "~@[ -spacing3 ~(~a~)~]" spacing3 "")
    (state state "~@[ -state ~(~a~)~]" state "")
    (tabs tabs "~@[ -tabs ~(~a~)~]" tabs "")
    (takefocus takefocus "~@[ -takefocus ~(~a~)~]" takefocus "")
    (tearoff tearoff "~@[ -tearoff ~(~a~)~]" tearoff "")
    (tearoffcommand tearoffcommand "~@[ -tearoffcommand ~(~a~)~]" tearoffcommand "")
    (text text "~@[ -text \"~a\"~]" (tkescape text) "")
    (textvariable textvariable "~@[ -textvariable text_~a~]" (and textvariable (name widget)) "")
    (tickinterval tickinterval "~@[ -tickinterval ~(~a~)~]" tickinterval "")
    (title title "~@[ -title ~(~a~)~]" title "")
    (to to "~@[ -to ~(~a~)~]" to "")
    (troughcolor troughcolor "~@[ -troughcolor ~(~a~)~]" troughcolor "")
    (type type "~@[ -type ~(~a~)~]" type "")
    (underline underline "~@[ -underline ~(~a~)~]" underline "")
    (undo undo "~@[ -undo ~(~a~)~]" undo "")
    (use use "~@[ -use ~(~a~)~]" use "")
    (validate validate "~@[ -validate ~(~a~)~]" validate "")
    (validatecommand validatecommand "~@[ -validatecommand ~(~a~)~]" validatecommand "")
    (value value "~@[ -value ~(~a~)~]" value "")
    (value-radio-button nil "~@[ -value ~(~a~)~]" (radio-button-value widget) "")
    (values values "~@[ -values ~(~a~)~]" values "")
    (variable variable "~@[ -variable ~(~a~)~]" variable "")
    (variable-radio-button nil "~@[ -variable ~(~a~)~]" (radio-button-variable widget) "")
    (visual visual "~@[ -visual ~(~a~)~]" visual "")
    (width width "~@[ -width ~(~a~)~]" width "")
    (wrap wrap "~@[ -wrap ~(~a~)~]" wrap "")
    (wraplength wraplength "~@[ -wraplength ~(~a~)~]" wraplength "")
    (xscrollcommand xscrollcommand "~@[ -xscrollcommand ~(~a~)~]" xscrollcommand "")
    (xscrollincrement xscrollincrement "~@[ -xscrollincrement ~(~a~)~]" xscrollincrement "")
    (yscrollcommand yscrollcommand "~@[ -yscrollcommand ~(~a~)~]" yscrollcommand "")
    (yscrollincrement yscrollincrement "~@[ -yscrollincrement ~(~a~)~]" yscrollincrement "")
    ))


  (defparameter *class-args*
    '())
 
  (defun build-args (class parents defs)
    (format t  "class ~s parents ~s defs ~s~%" class parents defs) (force-output)
    (let ((args nil))
      (dolist (p parents)
	(let ((arglist (rest (assoc p *class-args*))))
	  (format t "parent: ~s arglist: ~s~%" p arglist) (force-output)
	  (dolist (arg arglist)
	    (unless (member arg args)
	      (setf args (append args (list arg)))))))
      (loop 
       while defs
       do
       (let ((arg (pop defs)))
	 (cond
	  ((eq arg :inherit)	 
	   (let* ((inheritedclass (pop defs))
		  (arglist (rest (assoc inheritedclass *class-args*))))
	     (dolist (arg arglist)
	       (unless (member arg args)
		 (setf args (append args (list arg)))
		 ))))
	  ((eq arg :delete)
	   (setf args (delete (pop defs) args)))	    
	  (t
	   (setf args (append args (list arg)))))))
      (format t "class: ~a args: ~a~&" class args) (force-output)
      args
      ))
  )

(defmacro defargs (class parents &rest defs)
  (let ((args (build-args class parents defs)))
    (setf *class-args* (append *class-args* (list (cons class args))))
    `(setf *class-args* (append *class-args* (list '(,class ,@args))))))

(defargs widget () 
  relief cursor borderwidth background
)

;(defargs button (widget) anchor)
;(defargs text (widget button) :delete anchor color)

(defargs button (widget) 
  activebackground activeforeground anchor bitmap command compound default disabledForeground font foreground height highlightbackground highlightcolor highlightthickness image justify overrelief padx pady repeatdelay repeatinterval state takefocus text textvariable underline width wraplength)

(defargs canvas ()
  background borderwidth closeenough confine cursor height highlightbackground highlightcolor highlightthickness insertbackground insertborderwidth insertofftime insertontime insertwidth offset relief scrollregion selectbackground selectborderwidth selectforeground state takefocus width xscrollcommand xscrollincrement yscrollcommand yscrollincrement)
	
(defargs check-button ()
  activebackground activeforeground anchor background bitmap borderwidth cbcommand compound cursor disabledForeground font foreground height highlightbackground highlightcolor highlightthickness image indicatorOn justify offrelief offvalue onvalue overrelief padx pady relief selectcolor selectimage state takefocus text textvariable underline variable width wraplength)

(defargs entry () background borderwidth cursor disabledbackground disabledForeground exportselection font foreground highlightbackground highlightcolor highlightthickness insertbackground insertborderwidth insertofftime insertontime insertwidth invalidcommand justify readonlybackground relief selectbackground selectborderwidth selectforeground show state takefocus textvariable validate validatecommand width xscrollcommand )

(defargs frame ()
  borderwidth class relief background colormap container cursor height highlightbackground highlightcolor highlightthickness padx pady takefocus visual width)

(defargs label ()
  activebackground activeforeground anchor background bitmap borderwidth compound cursor disabledForeground font foreground height highlightbackground highlightcolor highlightthickness image justify padx pady relief state takefocus text textvariable underline width wraplength )

(defargs labelframe ()
  borderwidth class font foreground labelanchor labelwidget relief text background colormap container cursor height highlightbackground highlightcolor highlightthickness padx pady takefocus visual width)

(defargs listbox ()
  activestyle background borderwidth cursor disabledForeground exportselection font foreground height highlightbackground highlightcolor highlightthickness relief selectbackground selectborderwidth selectforeground selectmode setgrid state takefocus width xscrollcommand yscrollcommand listvariable)

(defargs menu ()
  activebackground activeborderwidth activeforeground background borderwidth cursor disabledForeground font foreground postcommand relief selectcolor takefocus tearoff tearoffcommand title type)

(defargs menubutton ()
  activebackground activeforeground anchor background bitmap borderwidth cursor direction disabledForeground font foreground height highlightbackground highlightcolor highlightthickness image indicatorOn justify menu padx pady relief compound state takefocus text textvariable underline width wraplength)

(defargs message ()
  anchor aspect background borderwidth cursor font foreground highlightbackground highlightcolor highlightthickness justify padx pady relief takefocus text textvariable width)

(defargs paned-window ()
  background borderwidth cursor handlepad handlesize height opaqueresize orient relief sashcursor sashpad sashrelief sashwidth showhandle width)

(defargs radio-button ()
  activebackground activeforeground anchor background bitmap borderwidth command-radiobuton compound cursor disabledForeground font foreground height highlightbackground highlightcolor highlightthickness image indicatorOn justify offrelief overrelief padx pady relief selectcolor selectimage state takefocus text textvariable underline value-radio-button variable-radio-button width wraplength)

(defargs scale ()
  activebackground background bigincrement borderwidth command cursor digits font foreground from highlightbackground highlightcolor highlightthickness label length orient relief repeatdelay repeatinterval resolution showvalue sliderlength sliderrelief state takefocus tickinterval to troughcolor variable width)

(defargs scrollbar ()
  activebackground activerelief background borderwidth command-scrollbar cursor elementborderwidth highlightbackground highlightcolor highlightthickness jump orient relief repeatdelay repeatinterval takefocus troughcolor width)

(defargs spinbox ()
  activebackground background borderwidth Button.background Button.cursor Button.relief command cursor disabledbackground disabledForeground exportselection font foreground format from highlightbackground highlightcolor highlightthickness increment insertbackground insertborderwidth insertofftime insertontime insertwidth invalidcommand justify relief readonlybackground repeatdelay repeatinterval selectbackground selectborderwidth selectforeground state takefocus textvariable to validate validatecommand values width wrap xscrollcommand)

(defargs text ()
  autoseparators  background borderwidth cursor exportselection font foreground height highlightbackground highlightcolor highlightthickness insertbackground insertborderwidth insertofftime insertontime insertwidth maxundo padx  pady relief selectbackground selectborderwidth selectforeground setgrid spacing1 spacing2 spacing3 state tabs takefocus undo width wrap xscrollcommand yscrollcommand)

(defargs toplevel ()
  borderwidth class menu relief screen use background colormap container cursor height highlightbackground highlightcolor highlightthickness padx pady takefocus visual width)

(defmacro defwidget (class parents slots cmd &rest code)
  (let ((args (sort (copy-list (rest (assoc class *class-args*)))
		    (lambda (x y)
		      (string< (symbol-name x) (symbol-name y))))))
    (let ((cmdstring (format nil "~a ~~A " cmd))
	  (codelist nil)
	  (keylist nil))
      (format t "args::~s~%" args)
      (dolist (arg args)
	(let ((entry (assoc arg *initargs*)))
	  (cond
	   (entry 
	    (setf cmdstring (concatenate 'string cmdstring (third entry)))
	    (when (iarg-key entry)
	      (setf keylist (append keylist (list (iarg-key entry)))))
	    (setf codelist (append codelist (list (iarg-code entry))))
	    )
	   (t 
	    (setf cmdstring (concatenate 'string cmdstring (format nil "~~@[ -~(~a~) ~~(~~A~~)~~]" arg)))
	    (setf keylist (append keylist (list arg)))
	    (setf codelist (append codelist (list arg)))
	  ))))

      ;;(format t "~s~&" 
      (pprint `(progn
	 (defclass ,class (,@parents)
	   ,slots
	    )
	 (defmethod initialize-instance :after ((widget ,class) &key ,@keylist)
	   (format-wish ,cmdstring (widget-path widget) ,@codelist)
	   ,@code
	   )))
      `(progn
	 (defclass ,class (,@parents)
	   ,slots
	    )
	 (defmethod initialize-instance :after ((widget ,class) &key ,@keylist)
	   (format-wish ,cmdstring (widget-path widget) ,@codelist)
	   ,@code
	   )	 
	 ))))

;;; the library implementation 

(defvar *cursors*
  (list
   "X_cursor" "arrow" "based_arrow_down" "based_arrow_up" "boat" "bogosity"
   "bottom_left_corner" "bottom_right_corner" "bottom_side" "bottom_tee"
   "box_spiral" "center_ptr" "circle" "clock" "coffee_mug" "cross"
   "cross_reverse" "crosshair" "diamond_cross" "dot" "dotbox" "double_arrow"
   "draft_large" "draft_small" "draped_box" "exchange" "fleur" "gobbler"
   "gumby" "hand1" "hand2" "heart" "icon" "iron_cross" "left_ptr" "left_side"
   "left_tee" "leftbutton" "ll_angle" "lr_angle" "man" "middlebutton" "mouse"
   "pencil" "pirate" "plus" "question_arrow" "right_ptr" "right_side"
   "right_tee" "rightbutton" "rtl_logo" "sailboat" "sb_down_arrow"
   "sb_h_double_arrow" "sb_left_arrow" "sb_right_arrow" "sb_up_arrow"
   "sb_v_double_arrow" "shuttle" "sizing" "spider" "spraycan" "star"
   "target" "tcross" "top_left_arrow" "top_left_corner" "top_right_corner"
   "top_side" "top_tee" "trek" "ul_angle" "umbrella" "ur_angle" "watch" "xterm"))

(defun bell ()
  (send-wish (format nil "bell")))

(defun destroy (widget)
  (send-wish (format nil "destroy ~a" (widget-path widget))))

(defun clipboard-clear ()
  (send-wish "clipboard clear"))

(defun clipboard-get ()
  ;(format-wish "esc [clipboard get]; flush stdout")
  (format-wish "senddatastring [clipboard get]")
  (read-data))

(defun clipboard-append (txt)
  (format-wish "clipboard append {~a}" txt))

;; basic tk object
(defclass tkobject ()
  ((name :accessor name :initarg :name :initform nil)
   )
  (:documentation "Base class for every Tk object"))

(defgeneric widget-path (w))
(defmethod widget-path ((w (eql nil))) nil)

;; basic class for all widgets 
(defclass widget(tkobject)
  ((master :accessor master :initarg :master :initform nil) ;; parent widget or nil
   (widget-path :reader widget-path :initarg :path :initform nil)         ;; pathname to refer to the widget
   )
  (:documentation "Base class for all widget types"))

;; creating of the tk widget after creating the clos object
(defmethod initialize-instance :after ((w widget) &key)
  (unless (name w)			; generate name if not given 
    (setf (name w) (create-name)))
  (unless (widget-path w)			; and pathname
    (setf (slot-value w 'widget-path) (create-path (master w) (name w))))
  ;(create w)				; call the widget specific creation method - every 
  )					; widget class needs to overload that

(defgeneric create (w))

(defmethod create ((w widget))
  )


(defgeneric (setf command) (value widget))
(defgeneric command (widget))

(defmethod command ((widget widget))
  (gethash (name widget) *callbacks*))


(defgeneric lower (widget &optional other))
(defmethod lower ((widget widget) &optional other)
  (send-wish (format nil "lower ~a~@[ ~a~]" (widget-path widget) (and other (widget-path other)))))

(defgeneric raise (widget &optional above))
(defmethod raise ((widget widget) &optional above)
  (send-wish (format nil "raise ~a~@[ ~a~]" (widget-path widget) (and above (widget-path above)))))


(defstruct event
  x
  y
  keycode
  char
  width
  height
  root-x
  root-y
  mouse-button
  )

(defun construct-tk-event (properties)
 (make-event
   :x (first properties)
   :y (second properties)
   :keycode (third properties)
   :char (fourth properties)
   :width (fifth properties)
   :height (sixth properties)
   :root-x (seventh properties)
   :root-y (eighth properties)
   :mouse-button (ninth properties)
   ))

(defgeneric bind (w event fun &key append))
(defmethod bind ((w widget) event fun &key append)
  "bind fun to event of the widget w"
  (let ((name (create-name)))
    (add-callback name fun)
    ;(format-wish "bind  ~a ~a {sendevent ~A %x %y %k %K %w %h %X %Y}" (widget-path w) event name)
    (format-wish "bind  ~a ~a {~:[~;+~]sendevent ~A %x %y %k %K %w %h %X %Y %b}" 
		 (widget-path w) event append name)
))




(defmethod bind (s event fun &key append)
  "bind fun to event within context indicated by string ie. 'all' or 'Button'"
  (let ((name (create-name)))
    (add-callback name fun)
    ;;(format-wish "bind  ~a ~a {sendevent ~A %x %y %k %K %w %h %X %Y}" s event name)
    (format-wish "bind  ~a ~a {~:[~;+~]sendevent ~A %x %y %k %K %w %h %X %Y %b}" 
		 s event append name)
    ))


(defvar *tk* (make-instance 'widget :name "." :path "."))

;;; generic functions

(defgeneric canvas (w))

(defgeneric value (widget)
  (:documentation "reads the value of the variable associated with the widget"))

(defclass tkvariable ()
  ())

(defmethod initialize-instance :around ((v tkvariable) &key)
  (call-next-method)
  (format-wish "~a configure -variable ~a" (widget-path v) (name v)))

(defmethod value ((v tkvariable))
  (format-wish "senddata $~a" (name v))
  (read-data))

(defgeneric (setf value) (widget val))
(defmethod (setf value) (val (v tkvariable))
  (format-wish "set ~a {~a}" (name v) val))

(defclass tktextvariable ()
  ())

(defgeneric text (widget)
  (:documentation "reads the value of the textvariable associated with the widget")
  )

(defmethod initialize-instance :around ((v tktextvariable) &key)
  (call-next-method)
  (format-wish "~a configure -textvariable text_~a" (widget-path v) (name v))
  )

(defmethod text ((v tktextvariable))
  (format-wish "senddatastring $text_~a" (name v))
  (read-data))

(defgeneric (setf text) (val variable))

(defmethod (setf text) (val (v tktextvariable))
  (format-wish "set text_~a \"~a\"" (name v) (tkescape val)))

;;; window menu bar

(defclass menubar(widget)
  ())

(defun make-menubar(&optional (master nil))
 (make-instance 'menubar :master master :name "menubar"))

;(defmethod create ((mb menubar))
(defmethod initialize-instance :after ((mb menubar) &key)
  (format-wish "menu ~a -tearoff 0 -type menubar" (widget-path mb))
  (format-wish "~a configure -menu ~a" (if (master mb)
					(widget-path (master mb))
				      ".")
	    (widget-path mb)))

;;; menues

(defclass menu(widget)
  ((text :accessor text :initarg :text)
   (help :accessor menu-help :initarg :help :initform nil)
   ))

;(defmethod create ((m menu))

(defmethod initialize-instance :after ((m menu) &key underline)
  (when (menu-help m) ;; special treatment for help menu
    (setf (name m) "help")
    (setf (slot-value m 'widget-path) (create-path (master m) (name m))))
  (format-wish "menu ~A -tearoff 0" (widget-path m))
  (when (master m) (format-wish "~A add cascade -label {~A} -menu ~a~@[ -underline ~a ~]" (widget-path (master m)) (text m) (widget-path m) underline)))

(defun make-menu(menu text &key underline name)
  (if name
      (make-instance 'menu :master menu :text text :underline underline :name name)
    (make-instance 'menu :master menu :text text :underline underline)))



(defun add-separator (menu)
   (format-wish "~A add separator" (widget-path menu)))

;;; menu button

(defclass menubutton(widget) 
  ((text :accessor text :initarg :text :initform "")
   ))

(defmethod initialize-instance :after ((m menubutton) &key command underline accelerator)
   (when command
     (add-callback (name m) command))
   (format-wish "~A add command -label {~A}  -command {callback ~A}~@[ -underline ~a ~]~@[ -accelerator {~a} ~]"
		(widget-path (master m)) (text m) (name m) underline accelerator)
   )

(defun make-menubutton(menu text command &key underline accelerator)
  (let* ((mb (make-instance 'menubutton :master menu :text text :command command :underline underline
			    :accelerator accelerator)))
    mb))

(defclass menucheckbutton(widget) 
  ((text :accessor text :initarg :text)
   (command :accessor command :initarg :command :initform nil)))

(defmethod initialize-instance :after ((m menucheckbutton) &key)
  (when (command m)
    (add-callback (name m) (command m)))
  (format-wish "~A add checkbutton -label {~A} -variable ~a ~@[ -command {callback ~a}~]"
	       (widget-path (master m)) (text m) (name m) (and (command m) (name m)))
  )


(defmethod value ((cb menucheckbutton))
  (format-wish "senddata $~a" (name cb))
  (read-data))

(defmethod (setf value) (val (cb menucheckbutton))
  (format-wish "set ~a ~a" (name cb) val))

(defclass menuradiobutton(widget) 
  ((text :accessor text :initarg :text)
   (command :accessor command :initarg :command :initform nil)
   (group :accessor group :initarg :group :initform nil)))

(defmethod initialize-instance :after ((m menuradiobutton) &key)
  (when (command m)
    (add-callback (name m) (command m)))
  (unless (group m)
    (setf (group m)
	  (name m)))
      (format-wish "~A add radiobutton -label {~A} -value ~a -variable ~a ~@[ -command {callback ~a}~]"
	    (widget-path (master m)) (text m) (name m) (group m)
	    (and (command m) (name m))))
   

(defmethod value ((cb menuradiobutton))
  (format-wish "senddata $~a" (group cb))
  (read-data))

(defmethod (setf value) (val (cb menuradiobutton))
  (format-wish "set ~a ~a" (group cb) val))


;;; method to pop up a menue at the root window coordinates x and y

(defgeneric popup (menu x y))
(defmethod popup ((menu menu) x y)
  (format-wish "tk_popup ~A ~A ~A" (widget-path menu) x y))


(defgeneric menu-delete (menu index))
(defmethod menu-delete ((menu menu) index)
  (format-wish "~A delete ~A" (widget-path menu) index))




;;; standard button widget

(defwidget button (widget tktextvariable) () "button")

(defmethod (setf command) (val (button button))
  (add-callback (name button) val)
  (format-wish "~a configure -command {callback ~a}" (widget-path button) (name button)))

;;; check button widget

(defwidget check-button (widget tktextvariable tkvariable) () "checkbutton")

(defmethod (setf command) (val (check-button check-button))
  (add-callback (name check-button) val)
  (format-wish "~a configure -command {callbackval ~a $~a}" (widget-path check-button)
	       (name check-button) (name check-button)))

;;; radio button widget

(defwidget radio-button (tktextvariable widget) 
  ((val :accessor radio-button-value :initarg :value :initform nil)
   (var :accessor radio-button-variable :initarg :variable :initform nil)) 
  "radiobutton")

(defmethod value ((rb radio-button))
  "reads the content of the shared variable of the radio button set"
  (if (radio-button-variable rb)
      (progn
	(format-wish "senddata $~a" (radio-button-variable rb))
	(read-data)
	)
    nil))

(defmethod (setf value) (val (rb radio-button))
  "sets the content of the shared variable of the radio button set"
  (when (radio-button-variable rb)
    (format-wish "set ~a ~a" (radio-button-variable rb) val)))

(defmethod (setf command) (val (rb radio-button))
  (add-callback (name rb) val)
  (format-wish "~a configure -command {callbackval ~a $~a}" (widget-path rb) (name rb) (radio-button-variable rb)))


;; text entry widget

(defwidget entry (widget tktextvariable) () "entry")

(defun entry-select (e from to)
  (format-wish "~a selection range ~a ~a" (widget-path e) from to))

;;; frame widget 

(defwidget frame (widget) () "frame")

;(defun make-frame (master)
;  (make-instance 'frame :master master))

;;; labelframe widget 

(defwidget labelframe (widget) () "labelframe")

(defmethod (setf text) :after (val (l labelframe))
  (format-wish "~a configure -text {~a}" (widget-path l) val))

;;; panedwindow widget


(defwidget paned-window (widget) () "panedwindow")

(defgeneric pane-configure (window option value))
(defmethod pane-configure ((pw paned-window) option value)
  (format-wish "~a paneconfigure ~a {~a}" (widget-path pw) option value))

(defgeneric add-pane (window widget))
(defmethod add-pane ((pw paned-window) (w widget))
  (format-wish "~a add ~a" (widget-path pw) (widget-path w)))

(defgeneric forget-pane (window widget))
(defmethod forget-pane ((pw paned-window) (w widget))
  (format-wish "~a forget ~a" (widget-path pw) (widget-path w)))

;;; listbox widget

(defwidget listbox (widget)
  ((xscroll :accessor xscroll :initarg :xscroll :initform nil)
   (yscroll :accessor yscroll :initarg :yscroll :initform nil)
   ) "listbox")


(defmethod (setf command) (val (listbox listbox))
  (add-callback (name listbox) val)
  (format-wish "bind ~a <<ListboxSelect>> {callbackval ~a ([~a curselection])}" (widget-path listbox) (name listbox)
	       (widget-path listbox)))

(defgeneric listbox-append (l vals))
(defmethod listbox-append ((l listbox) values)
  "append values (which may be a list) to the list box"
  (if (listp values)
      (format-wish "~a insert end ~{ \{~a\}~}" (widget-path l) values)
    (format-wish "~a insert end \{~a\}" (widget-path l) values)))

(defgeneric listbox-get-selection (l))
(defmethod listbox-get-selection ((l listbox))
  (format-wish "senddata \"([~a curselection])\"" (widget-path l))
  (read-data))

;  (format-wish "puts -nonewline {(};puts -nonewline [~a curselection];puts {)};flush stdout" (widget-path l))
;  (read *wish*))

(defgeneric listbox-select (l val))
(defmethod listbox-select ((l listbox) val)
  "modify the selection in listbox, if nil is given, the selection is cleared,
if a number is given the corresponding element is selected, alternatively
a list of numbers may be given"
  (if (null val)
      (format-wish "~a selection clear 0 end" (widget-path l))
    (if (listp val)
	(format-wish "~a selection set ~{ ~a~}" (widget-path l) val)
      (format-wish "~a selection set ~a" (widget-path l) val))))

(defgeneric listbox-clear (l))

(defmethod listbox-clear ((l listbox))
  (format-wish "~a delete 0 end" (widget-path l)))


(defgeneric listbox-configure (l i &rest options))
(defmethod listbox-configure ((l listbox) index &rest options)
  (format-wish "~a itemconfigure ~a ~{ -~(~a~) {~(~a~)}~}" (widget-path l) index options)
  )


(defclass scrolled-listbox (frame)
  ((listbox :accessor listbox)
   (hscroll :accessor hscroll)
   (vscroll :accessor vscroll)
   ))

(defmethod initialize-instance :after ((sl scrolled-listbox) &key)
  (setf (hscroll sl) (make-scrollbar sl :orientation "horizontal"))
  (setf (vscroll sl) (make-scrollbar sl))
  (setf (listbox sl) (make-instance 'listbox :master sl :xscroll (hscroll sl) :yscroll (vscroll sl)))
  (grid (listbox sl) 0 0 :sticky "news")
  (grid (hscroll sl) 1 0 :sticky "we")
  (grid (vscroll sl) 0 1 :sticky "ns")
  (grid-columnconfigure sl 0 :weight 1)
  (grid-columnconfigure sl 1 :weight 0)
  (grid-rowconfigure sl 0 :weight 1)
  (grid-rowconfigure sl 1 :weight 0)
 
  (configure (hscroll sl) "command" (concatenate 'string (widget-path (listbox sl)) " xview"))
  (configure (vscroll sl) "command" (concatenate 'string (widget-path (listbox sl)) " yview"))
  (configure (listbox sl) "xscrollcommand" (concatenate 'string (widget-path (hscroll sl)) " set"))
  (configure (listbox sl) "yscrollcommand" (concatenate 'string (widget-path (vscroll sl)) " set"))
  )

(defmethod listbox-append ((l scrolled-listbox) values)
  (listbox-append (listbox l) values))

(defmethod listbox-get-selection ((l scrolled-listbox))
  (listbox-get-selection (listbox l)))

(defmethod listbox-select ((l scrolled-listbox) val)
  (listbox-select (listbox l) val))

;;; scrolled-text

(defclass scrolled-text (frame)
  ((textbox :accessor textbox)
   (hscroll :accessor hscroll)
   (vscroll :accessor vscroll)
   ))

(defmethod initialize-instance :after ((st scrolled-text) &key)
  (setf (hscroll st) (make-scrollbar st :orientation "horizontal"))
  (setf (vscroll st) (make-scrollbar st))
  (setf (textbox st) (make-instance 'text :master st :xscroll (hscroll st) :yscroll (vscroll st)))
  (grid (textbox st) 0 0 :sticky "news")
  (grid (hscroll st) 1 0 :sticky "we")
  (grid (vscroll st) 0 1 :sticky "ns")
  (grid-columnconfigure st 0 :weight 1)
  (grid-columnconfigure st 1 :weight 0)
  (grid-rowconfigure st 0 :weight 1)
  (grid-rowconfigure st 1 :weight 0)
 
  (configure (hscroll st) "command" (concatenate 'string (widget-path (textbox st)) " xview"))
  (configure (vscroll st) "command" (concatenate 'string (widget-path (textbox st)) " yview"))
  (configure (textbox st) "xscrollcommand" (concatenate 'string (widget-path (hscroll st)) " set"))
  (configure (textbox st) "yscrollcommand" (concatenate 'string (widget-path (vscroll st)) " set"))
  )

(defgeneric append-text (txt text &optional tag))
(defmethod append-text ((txt scrolled-text) text &optional (tag nil))
  (format-wish "~a insert end {~a}~@[ ~(~a~)~]" (widget-path (textbox txt)) text tag))

(defmethod (setf text) (new-text (self scrolled-text))
  (setf (text (textbox self)) new-text))

(defgeneric insert-object (txt object))
(defmethod insert-object ((txt scrolled-text) obj)
  (format-wish "~a window create end -window ~a" (widget-path (textbox txt)) (widget-path obj)))

(defgeneric see (txt pos))
(defmethod see ((txt scrolled-text) pos)
  (format-wish "~a see ~a" (widget-path (textbox txt)) pos))

;;; scale widget

(defwidget scale (tkvariable widget) () "scale")

(defmethod (setf command) (val (scale scale))
  (add-callback (name scale) val)					
  (format-wish "proc ~a-command {val} {callbackval ~a $val}" (name scale) (name scale))
  (format-wish "~a configure -command ~a-command" (widget-path scale) (name scale)))

;;; spinbox widget

(defwidget spinbox (tktextvariable widget) () "spinbox")

(defmethod (setf command) (val (sp spinbox))
  (add-callback (name sp) val)					
  (format-wish "~a configure -command {callbackstring ~a %s}" (widget-path sp) (name sp)))

;;; toplevel (window) widget 

(defwidget toplevel (widget) 
  ((protocol-destroy :accessor protocol-destroy :initarg :on-close :initform nil)
   (title :accessor title :initarg :title)
   ) 
  "toplevel"
  (when (title widget)
    (wm-title widget (title widget)))
  (unless (protocol-destroy widget)
    (format-wish "wm protocol ~a WM_DELETE_WINDOW {wm withdraw ~a}" (widget-path widget) (widget-path widget))))

(defun make-toplevel (master)
  (make-instance 'toplevel :master master))

;;; label widget

(defwidget label (tktextvariable widget) () "label")

;(defun make-label (master text)
;  (make-instance 'label :master master  :text text))

;;; message widget

(defwidget message (tktextvariable widget) () "message")

;;; scrollbar

(defwidget scrollbar (widget) () "scrollbar")

(defun make-scrollbar(master &key (orientation "vertical"))
  (make-instance 'scrollbar :master master :orientation orientation))

(defclass scrolled-canvas (frame)
  ((canvas :accessor canvas)
   (hscroll :accessor hscroll)
   (vscroll :accessor vscroll)
   ))

(defun make-scrolled-canvas (master)
  (make-instance 'scrolled-canvas :master master ))

(defmethod create ((sc scrolled-canvas)))

(defmethod initialize-instance :after ((sc scrolled-canvas) &key)
  (setf (hscroll sc) (make-scrollbar sc :orientation "horizontal"))
  (setf (vscroll sc) (make-scrollbar sc))
  (setf (canvas sc) (make-canvas sc :xscroll (hscroll sc) :yscroll (vscroll sc)))
  (grid (canvas sc) 0 0 :sticky :news)
  (grid (hscroll sc) 1 0 :sticky :we)
  (grid (vscroll sc) 0 1 :sticky :ns)
  (grid-columnconfigure sc 0 :weight 1)
  (grid-columnconfigure sc 1 :weight 0)
  (grid-rowconfigure sc 0 :weight 1)
  (grid-rowconfigure sc 1 :weight 0)
 
  (configure (hscroll sc) "command" (concatenate 'string (widget-path (canvas sc)) " xview"))
  (configure (vscroll sc) "command" (concatenate 'string (widget-path (canvas sc)) " yview"))
  (configure (canvas sc) "xscrollcommand" (concatenate 'string (widget-path (hscroll sc)) " set"))
  (configure (canvas sc) "yscrollcommand" (concatenate 'string (widget-path (vscroll sc)) " set"))
  )


(defclass scrolled-frame (frame)
  ((inner :accessor interior)
   (displayframe :accessor scrolled-frame-display)
   (hscroll :accessor hscroll)
   (vscroll :accessor vscroll)
   ))

(defmethod initialize-instance :after ((sf scrolled-frame) &key)
  (let ((f (make-instance 'frame :master sf)))
    (setf (scrolled-frame-display sf) f)
    (setf (interior sf) (make-instance 'frame :master f))
    (setf (hscroll sf) (make-instance 'scrollbar :master sf :orientation "horizontal"))
    (setf (vscroll sf) (make-instance 'scrollbar :master sf :orientation "vertical"))
    (grid f 0 0 :sticky "news")
    (grid (hscroll sf) 1 0 :sticky "we")
    (grid (vscroll sf) 0 1 :sticky "ns")
    (grid-columnconfigure sf 0 "weight" 1)
    (grid-columnconfigure sf 1 "weight" 0)
    (grid-rowconfigure sf 0 "weight" 1)
    (grid-rowconfigure sf 1 "weight" 0)
    (place (interior sf) 0 0)
    (send-wish (format nil "~a set  0.1 0.5" (widget-path (hscroll sf))))
    (send-wish (format nil "~a set  0.1 0.5" (widget-path (vscroll sf))))
    (send-wish (format nil "~a configure -command ~axv" (widget-path (hscroll sf)) (name sf)))
    (send-wish (format nil "~a configure -command ~ayv" (widget-path (vscroll sf)) (name sf)))
    (send-wish (format nil "
proc ~axv {{com moveto} {val 0} {unit 0}} {
set x [winfo x ~a]
set y [winfo y ~a]
set wx [winfo width ~a]
set w [winfo width ~a]
if {$val < 0} {set val 0}
if {$val > [expr 1.0*($wx-$w)/$wx]} {set val  [expr 1.0*($wx-$w)/$wx]}
place ~a -x [expr -($val * $wx)] -y $y
set x [winfo x ~a]
~a set [expr -1.0*$x/$wx] [expr 1.0*($w-$x)/$wx]
}
proc ~ayv {{com moveto} {val 0} {unit 0}} {
set x [winfo x ~a]
set y [winfo y ~a]
set wy [winfo height ~a]
set h [winfo height ~a]
if {$val < 0} {set val 0}
if {$val > [expr 1.0*($wy-$h)/$wy]} {set val  [expr 1.0*($wy-$h)/$wy]}
place ~a -x $x -y [expr -($val * $wy)]
set y [winfo y ~a]
~a set [expr -1.0*$y/$wy] [expr 1.0*($h-$y)/$wy]
}

"                   (name sf)
		    (widget-path (interior sf))
		    (widget-path (interior sf))
		    (widget-path (interior sf))
		    (widget-path f)
		    (widget-path (interior sf))
		    (widget-path (interior sf))		   
		    (widget-path (hscroll sf))

		    (name sf)
		    (widget-path (interior sf))
		    (widget-path (interior sf))
		    (widget-path (interior sf))
		    (widget-path f)
		    (widget-path (interior sf))
		    (widget-path (interior sf))		   
		    (widget-path (vscroll sf))
		    ))
    ))

;;; canvas widget

(defwidget canvas (widget)
  ((xscroll :accessor xscroll :initarg :xscroll :initform nil)
   (yscroll :accessor yscroll :initarg :yscroll :initform nil)
   (scrollregion-x0 :accessor scrollregion-x0 :initform nil)
   (scrollregion-y0 :accessor scrollregion-y0 :initform nil)
   (scrollregion-x1 :accessor scrollregion-x1 :initform nil)
   (scrollregion-y1 :accessor scrollregion-y1 :initform nil)
   ) 
  "canvas"
  )

;; wrapper class for canvas items
(defclass canvas-item ()
  ((canvas :accessor canvas :initarg :canvas)
   (handle :accessor handle :initarg :handle))
  )

(defmethod canvas ((canvas canvas)) canvas)

(defun make-canvas (master &key (width nil) (height nil) (xscroll nil) (yscroll nil))
  (make-instance 'canvas :master master :width width :height height :xscroll xscroll :yscroll yscroll))

(defgeneric set-coords (canvas item coords))

(defmethod set-coords (canvas item coords)
  (format-wish "~a coords ~a~{ ~a~}" (widget-path canvas) item coords))

(defmethod set-coords ((canvas canvas) (item canvas-item) (coords list))
  (set-coords canvas (handle item) coords))

(defgeneric set-coords* (canvas item &rest coords))

(defmethod set-coords* (canvas item &rest coords)
  (funcall #'set-coords canvas item coords))

(defmethod set-coords* ((canvas canvas) (item canvas-item) &rest coords)
  (funcall #'set-coords canvas (handle item) coords))

(defgeneric coords (item))
(defmethod coords ((item canvas-item))
     (list 0 0)				; not implemented yet
     )
 
(defun format-number (stream number)
  (cond
   ((complexp number)
    (format-number stream (realpart number))
    (format-number stream (imagpart number)))
   ((integerp number)
    (format stream " ~d" number))	    
   ((typep number 'single-float)
    (format stream " ~a" number))
   ((numberp number)
    (format-number stream (coerce number 'single-float)))
   ((null number)
    )
   ((listp number)
    (format-number stream (car number))
    (format-number stream (cdr number)))
   ((arrayp number)
    (dotimes (i (length number))
      (format-number stream (aref number i))))
   ))
 
(defun process-coords (input)
  (with-output-to-string (s)
			 (format-number s input)))
 
(defmethod (setf coords) (val (item canvas-item))
  (let ((coord-list (process-coords val)))
    (format-wish "~a coords ~a ~a" (widget-path (canvas item)) (handle item) coord-list)
    ))

(defgeneric itembind (canvas w event fun))
(defmethod itembind ((canvas canvas) (item canvas-item) event fun)
  (itembind canvas (handle item) event fun))

(defmethod itembind ((canvas canvas) (item integer) event fun)
  "bind fun to event of the widget w"
  (let ((name (create-name)))
    (add-callback name fun)
    (format-wish "~a bind ~a ~a {sendevent ~A %x %y %k %K %w %h %X %Y %b}" (widget-path canvas) item event name)))

(defmethod bind ((w canvas-item) event fun &key append)
  (declare (ignore append))
  (itembind (canvas w) (handle w) event fun))

(defgeneric scrollregion (canvas x0 y0 x1 y1))
(defmethod scrollregion ((c canvas) x0 y0 x1 y1)
  (setf (scrollregion-x0 c) x0)
  (setf (scrollregion-y0 c) y0)
  (setf (scrollregion-x1 c) x1)
  (setf (scrollregion-y1 c) y1)
  (configure c :scrollregion (format nil "~a ~a ~a ~a" x0 y0 x1 y1)))


(defgeneric canvasx (canvas screenx))
(defmethod canvasx ((canvas canvas) screenx)
  (format-wish "senddata [~a canvasx ~a]" (widget-path canvas) screenx)
  (read-data))

(defgeneric canvasy (canvas screeny))
(defmethod canvasy ((canvas canvas) screeny)
  (format-wish "senddata [~a canvasy ~a]" (widget-path canvas) screeny)
  (read-data))

(defgeneric itemmove (canvas item dx dy))
(defmethod itemmove ((canvas canvas) (item integer) dx dy)
  (format-wish "~a move ~a ~a ~a" (widget-path canvas) item dx dy))
(defmethod itemmove ((canvas canvas) (item canvas-item) dx dy)
  (itemmove (canvas item) (handle item) dx dy))

(defgeneric itemdelete (canvas item))
(defmethod itemdelete ((canvas canvas) (item integer))
  (format-wish "~a delete ~a" (widget-path canvas) item))
(defmethod itemdelete ((canvas canvas) (item canvas-item))
  (format-wish "~a delete ~a" (widget-path canvas) (handle item)))

(defgeneric move (item dx dy))
(defmethod move ((item canvas-item) dx dy)
  (itemmove (canvas item) (handle item) dx dy))

(defgeneric clear (widget))
(defmethod clear ((canvas canvas))
  (format-wish "~a delete all" (widget-path canvas)))
;; canvas item functions

(defun create-line (canvas coords)
  (format-wish "senddata [~a create line~{ ~a~}]" (widget-path canvas) coords)
  (read-data))

(defun create-line* (canvas &rest coords)
  (funcall #'create-line canvas coords))

(defclass canvas-line (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-line) &key canvas coords)
  (setf (handle c) (create-line canvas coords)))

(defun make-line (canvas coords)
  (make-instance 'canvas-line :canvas canvas :coords coords))


(defun create-polygon (canvas coords)
  (format-wish "senddata [~a create polygon~{ ~a~}]" (widget-path canvas) coords)
  (read-data))

(defclass canvas-polygon (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-polygon) &key canvas coords)
  (setf (handle c) (create-polygon canvas coords)))

(defun make-polygon (canvas coords)
  (make-instance 'canvas-polygon :canvas canvas :coords coords))


(defun create-oval (canvas x0 y0 x1 y1)
  (format-wish "senddata [~a create oval ~a ~a ~a ~a]" (widget-path canvas) x0 y0 x1 y1)
  (read-data))

(defclass canvas-oval (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-oval) &key canvas x0 y0 x1 y1)
  (setf (handle c) (create-oval canvas x0 y0 x1 y1)))

(defun make-oval (canvas x0 y0 x1 y1)
  (make-instance 'canvas-oval :canvas canvas :x0 x0 :y0 y0 :x1 x1 :y1 y1))


(defun create-rectangle (canvas x0 y0 x1 y1)
  (format-wish "senddata [~a create rectangle ~a ~a ~a ~a]" (widget-path canvas) x0 y0 x1 y1)
  (read-data))

(defclass canvas-rectangle (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-rectangle) &key canvas x0 y0 x1 y1)
  (setf (handle c) (create-rectangle canvas x0 y0 x1 y1)))

(defun make-rectangle (canvas x0 y0 x1 y1)
  (make-instance 'canvas-rectangle :canvas canvas :x0 x0 :y0 y0 :x1 x1 :y1 y1))



(defun create-text (canvas x y text)
  (format-wish "senddata [~a create text ~a ~a -anchor nw -text {~a}]" (widget-path canvas) x y text)
  (read-data))

(defclass canvas-text (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-text) &key canvas x y text)
  (setf (handle c) (create-text canvas x y text)))


(defun create-image (canvas x y &key image)
  (format-wish "senddata [~a create image ~a ~a -anchor nw~@[ -image ~a~]]" (widget-path canvas) x y
	       (and image (name image)))
  (read-data))

(defclass canvas-image (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-image) &key canvas x y image)
  (setf (handle c) (create-image canvas x y :image image)))

(defun image-setpixel (image data x y &optional x2 y2 )
  (format-wish "~A put {~{{~:{#~2,'0X~2,'0X~2,'0X ~} } ~} } -to ~a ~a~@[ ~a~]~@[ ~a~]" (name image) data x y x2 y2))

(defun create-bitmap (canvas x y &key (bitmap nil))
  (format-wish "senddata [~a create image ~a ~a -anchor nw~@[ -bitmap ~a~]]" (widget-path canvas) x y
	       (and bitmap (name bitmap)))
  (read-data))


(defun create-arc (canvas x0 y0 x1 y1 &key (start 0) (extent 180) (style "pieslice"))
  (format-wish "senddata [~a create arc ~a ~a ~a ~a -start ~a -extent ~a -style ~a]"
	       (widget-path canvas) x0 y0 x1 y1 start extent style)
  (read-data))

(defclass canvas-arc (canvas-item)
  ())

(defmethod initialize-instance :after ((c canvas-arc) &key canvas x0 y0 x1 y1 (start 0) (extent 180) (style "pieslice"))
  (setf (handle c) (create-arc canvas x0 y0 x1 y1 :start start :extent extent :style style)))


(defun create-window (canvas x y widget &key (anchor :nw))
  (format-wish "senddata [~a create window ~a ~a -anchor ~(~a~) -window ~a]"
 	       (widget-path canvas) x y anchor (widget-path widget))

  (read-data))

(defun postscript (canvas filename &key rotate pageheight pagewidth)
  (if (and (scrollregion-x0 canvas)
	   (scrollregion-x1 canvas)
	   (scrollregion-y0 canvas)
	   (scrollregion-y1 canvas))
      (format-wish "~a postscript -file ~a -x ~a -y ~a -width ~a -height ~a~@[ -rotate ~a~]~@[ -pagewidth ~a~]~@[ -pageheight ~a~]"
		(widget-path canvas) filename
		(scrollregion-x0 canvas) (scrollregion-y0 canvas)
		(- (scrollregion-x1 canvas) (scrollregion-x0 canvas))
		(- (scrollregion-y1 canvas) (scrollregion-y0 canvas))
		rotate pageheight pagewidth
		)
    (format-wish "~a postscript -file ~a" (widget-path canvas) filename)))

;;; text widget

(defwidget text (widget)
  ((xscroll :accessor xscroll :initarg :xscroll :initform nil)
   (yscroll :accessor yscroll :initarg :yscroll :initform nil)
  )  "text")

(defun make-text (master &key (width nil) (height nil))
  (make-instance 'text :master master :width width :height height))

(defmethod append-text ((txt text) text &optional (tag nil))
  (format-wish "~a insert end {~a}~@[ ~(~a~)~]" (widget-path txt) text tag))

(defmethod insert-object ((txt text) obj)
  (format-wish "~a window create end -window ~a" (widget-path txt) (widget-path obj)))

(defun append-newline (text)
  (append-text text (coerce '(#\Linefeed) 'string)))


(defgeneric clear-text (txt))
(defmethod clear-text ((txt text))
  (format-wish "~A delete 0.0 end" (widget-path txt)))

(defmethod see((txt text) pos)
  (format-wish "~a see ~a" (widget-path txt) pos))

(defgeneric tag-configure (txt tag option value))
(defmethod tag-configure ((txt text) tag option value)
  (format-wish "~a tag configure ~a -~(~a~) {~(~a~)}" (widget-path txt)
	       (if (stringp tag)
		   tag
		 (format nil "~(~a~)" tag))
	       option value))

(defgeneric tag-bind (txt tag event fun))
(defmethod tag-bind ((txt text) tag event fun)
  "bind fun to event of the tag of the text widget txt"
  (let ((name (create-name)))
    (add-callback name fun)
    (format-wish "~a tag bind ~a ~a {callback ~A}" (widget-path txt) tag event name)
    ))

(defmethod text ((text text))
  (format-wish "senddatastring [~a get 1.0 end]" (widget-path text))
  (read-data))

(defmethod (setf text) (val (text text))
  (format-wish "~A delete 0.0 end;~A insert end {~A}" (widget-path text) (widget-path text) val))

(defgeneric save-text (txt filename))
(defmethod save-text ((txt text) filename)
  "save the content of the text widget into the file <filename>"
  (format-wish "set file [open {~a} \"w\"];puts $file [~a get 1.0 end];close $file;puts \"asdf\"" filename (widget-path txt))
  (read-line *wish*)
  )

(defgeneric load-text (txt filename))
(defmethod load-text((txt text) filename)
  "load the content of the file <filename>"
;  (format-wish "set file [open {~a} \"r\"];~a delete 1.0 end;~a insert end [read $file];close $file;puts \"asdf\"" filename (widget-path txt) (widget-path txt))
  (format-wish "set file [open {~a} \"r\"];~a delete 1.0 end;~a insert end [read $file];close $file;puts \"(:DATA asdf)\"" filename (widget-path txt) (widget-path txt))
  (read-data))

;;; photo image object

(defclass photo-image(tkobject)
  ()
  )

(defmethod widget-path ((photo photo-image))
  (name photo))
;(defmethod create ((p photo-image))
(defmethod initialize-instance :after ((p photo-image) &key width height)
  (setf (name p) (create-name))
  (format-wish "image create photo ~A~@[ -width ~a~]~@[ -height ~a~]" (name p) width height))

(defun make-image ()
  (let* ((name (create-name))
	 (i (make-instance 'photo-image :name name)))
    ;(create i)
    i))

(defgeneric image-load (p filename))
(defmethod image-load((p photo-image) filename)
  ;(format t "loading file ~a~&" filename)
  (send-wish (format nil "~A read {~A} -shrink" (name p) filename))
  )

(defgeneric ishow (p name))
(defmethod ishow((p photo-image) name)
  (convert (concatenate 'string name ".jpg")
	   "ishow.ppm")
  (image-load p "ishow.ppm"))

;;;; generic methods on widgets

;;; pack method for widget arrangement in container

(defgeneric pack (w &key side fill expand after before padx pady ipadx ipady anchor))

(defmethod pack ((w widget) &key (side :top) (fill :none) expand after before padx pady ipadx ipady anchor)
  (cond ((stringp side)
         (warn "Using a string for the :SIDE parameter is deprecated."))
        ((stringp fill)
         (warn "Using a string for the :FILL parameter is deprecated.")))
  (format-wish "pack ~A -side ~(~A~) -fill ~(~A~)~@[~* -expand 1~]~
             ~@[ -after ~A~]~@[ -before ~A~]~@[ -padx ~A~]~
             ~@[ -pady ~A~]~@[ -ipadx ~A~]~@[ -ipady ~A~]~@[ -anchor ~(~A~)~]"
          (widget-path w) side fill expand (and after (widget-path after)) (and before (widget-path before)) padx pady ipadx ipady anchor))

(defmethod pack ((list list) &rest rest)
  (mapcar #'(lambda (w) (apply #'pack w rest))
	  list))

(defgeneric pack-propagate (widget flag))
(defmethod pack-propagate ((w widget) flag)
  (format-wish "pack propagate ~A ~A"
	       (widget-path w)
	       (if flag "true" "false")))

(defgeneric pack-forget (widget))
(defmethod pack-forget ((w widget))
  (format-wish "pack forget ~A" (widget-path w)))


;;; place manager

(defgeneric place (widget x y &key width height))
(defmethod place (widget x y &key width height)
  (format-wish "place ~A -x ~A -y ~A~@[ -width ~a~]~@[ -height ~a~]" (widget-path widget) x y width height))

(defgeneric place-forget (widget))
(defmethod place-forget ((w widget))
  (format-wish "place forget ~A" (widget-path w)))

;;; grid manager

(defgeneric grid (widget r c &key columnspan ipadx ipady padx pady rowspan sticky))
(defmethod grid ((w widget) row column &key columnspan ipadx ipady padx pady rowspan sticky)
  (format-wish "grid ~a -row ~a -column ~a~@[ -columnspan ~a~]~@[ -ipadx ~a~]~
             ~@[ -ipady ~a~]~@[ -padx ~a~]~@[ -pady ~a~]~@[ -rowspan ~a~]~
             ~@[ -sticky ~(~a~)~]" (widget-path w) row column columnspan ipadx ipady padx pady rowspan  sticky))

(defgeneric grid-columnconfigure (widget c o v))
(defmethod grid-columnconfigure (widget column option value)
  (format-wish "grid columnconfigure ~a ~a -~(~a~) {~a}" (widget-path widget) column option value))

(defgeneric grid-rowconfigure (widget r o v))
(defmethod grid-rowconfigure (widget row option value)
  (format-wish "grid rowconfigure ~a ~a -~(~a~) {~a}" (widget-path widget) row option value))

(defgeneric grid-configure (widget o v))
(defmethod grid-configure (widget option value)
  (format-wish "grid configure ~a -~(~a~) {~a}" (widget-path widget) option value))


;;; configure a widget parameter

(defgeneric configure (widget option value &rest others))
(defmethod configure (widget option value &rest others)
  ;(format t "normal config~&")
  (format-wish "~A configure -~(~A~) {~A} ~{ -~(~a~) {~(~a~)}~}" (widget-path widget) option 
	    (if (stringp value) ;; There may be values that need to be passed as
		value           ;; unmodified strings, so do not downcase strings
	      (format nil "~(~a~)" value)) ;; if its not a string, print it downcased (eg. symbols)
	    others)
  widget)

(defmethod configure ((item canvas-item) option value &rest others)
  (format-wish "~A itemconfigure ~A -~(~A~) {~A}~{ -~(~a~) {~(~a~)}~}" (widget-path (canvas item)) (handle item) option
	       (if (stringp value) ;; There may be values that need to be passed as
		   value           ;; unmodified strings, so do not downcase strings
		 (format nil "~(~a~)" value))
	       others)
  item)

  


                                             ;; 

;;; for tkobjects, the name of the widget is taken
(defmethod configure (widget option (value tkobject) &rest others)
  (format-wish "~A configure -~(~A~) {~A} ~{ -~(~a~) {~(~a~)}~}" (widget-path widget) option (widget-path value) others)
  widget)

(defgeneric cget (widget option))
(defmethod cget ((widget widget) option)
  (format-wish "senddatastring [~a cget -~(~a~)]" (widget-path widget) option)
  (read-data))

(defun background (widget)
  (cget widget :background))

#-:gcl
(defun (setf background) (val widget)
  (configure widget :background val))

#|
(defmacro defoption (option)
  `(progn
     (defun ,option (widget)
       (cget widget "asdf"))
     (export ,option)))

(defoption fill)
|#

(defgeneric itemconfigure (widget item option value))

(defmethod itemconfigure ((widget canvas) item option value)
  (format-wish "~A itemconfigure ~A -~(~A~) {~A}" (widget-path widget) item option
	    (if (stringp value) ;; There may be values that need to be passed as
		value           ;; unmodified strings, so do not downcase strings
	      (format nil "~(~a~)" value)))) ;; if its not a string, print it downcased


;;; for tkobjects, the name of the widget is taken
(defmethod itemconfigure ((widget canvas) item option (value tkobject))
  (format-wish "~A itemconfigure ~A -~(~A~) {~A}" (widget-path widget) item option (widget-path value)))

(defgeneric itemlower (w i &optional below))
(defmethod itemlower ((widget canvas) item &optional below)
  (format-wish "~A lower ~A ~@[~A~]" (widget-path widget)
	       item below))

(defmethod lower ((item canvas-item) &optional below)
  (itemlower (canvas item) (handle item) (and below (handle below))))


(defgeneric itemraise (w i &optional above))
(defmethod itemraise ((widget canvas) item &optional above)
  (format-wish "~A raise ~A ~@[~A~]" (widget-path widget)
	       item above))

(defmethod raise ((item canvas-item) &optional above)
  (itemraise (canvas item) (handle item) (and above (handle above))))


;;; grab functions

(defgeneric grab (toplevel))
(defmethod grab ((toplevel toplevel))
  (format-wish "grab set ~a" (widget-path toplevel)))

(defgeneric grab-release (toplevel))
(defmethod grab-release ((toplevel toplevel))
  (format-wish "grab release ~a" (widget-path toplevel)))

;;; wm functions

(defgeneric wm-title (widget title))
(defmethod wm-title ((w widget) title)
  (format-wish "wm title ~a {~a}" (widget-path w) title))

(defgeneric minsize (widget x y))
(defmethod minsize ((w widget) x y)
  (format-wish "wm minsize ~a ~a ~a" (widget-path w) x y))

(defgeneric maxsize (widget x y))
(defmethod maxsize ((w widget) x y)
  (format-wish "wm maxsize ~a ~a ~a" (widget-path w) x y))

(defgeneric withdraw (toplevel))
(defmethod withdraw ((tl widget))
  (format-wish "wm withdraw ~a" (widget-path tl)))

(defgeneric normalize (toplevel))
(defmethod normalize ((tl widget))
  (format-wish "wm state ~a normal" (widget-path tl)))

(defgeneric iconify (toplevel))
(defmethod iconify ((tl toplevel))
  (format-wish "wm iconify ~a" (widget-path tl)))

(defgeneric deiconify (toplevel))
(defmethod deiconify ((tl toplevel))
  (format-wish "wm deiconify ~a" (widget-path tl)))

(defgeneric geometry (toplevel))
(defmethod geometry ((tl widget))
  (format-wish "senddatastring [wm geometry ~a]" (widget-path tl))
  (read-data))

(defgeneric set-geometry (toplevel width height x y))
(defmethod set-geometry ((tl widget) width height x y)
  ;;(format-wish "wm geometry ~a ~ax~a+~a+~a" (widget-path tl) width height x y)
  (format-wish "wm geometry ~a ~ax~a~@D~@D" (widget-path tl) width height x y)
  )

(defgeneric set-geometry-wh (toplevel width height))
(defmethod set-geometry-wh ((tl widget) width height)
  (format-wish "wm geometry ~a ~ax~a" (widget-path tl) width height))

(defgeneric set-geometry-xy (toplevel x y))
(defmethod set-geometry-xy ((tl widget) x y)
  (format-wish "wm geometry ~a ~@D~@D" (widget-path tl) x y))
 

(defgeneric on-close (toplevel fun))
(defmethod on-close ((tl toplevel) fun)
  (let ((name (create-name)))
    (add-callback name fun)
    (format-wish "wm protocol ~a WM_DELETE_WINDOW {callback ~A}" (widget-path tl) name)))

(defgeneric on-focus (toplevel fun))
(defmethod on-focus ((tl toplevel) fun)
  (let ((name (create-name)))
    (add-callback name fun)
    (format-wish "wm protocol WM_TAKE_FOCUS {callback ~A}"
	      name)))

(defun iconwindow (tl wid)
  (format-wish "wm iconwindow ~a ~a" (widget-path tl) (widget-path wid)))  

;;; winfo functions

(defun screen-width (&optional (w nil))
  "give the width of the screen in pixels (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo screenwidth ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-height (&optional (w nil))
  "give the height of the screen in pixels (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo screenheight ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-width-mm (&optional (w nil))
  "give the width of the screen in mm (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo screenmmwidth ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-height-mm (&optional (w nil))
  "give the height of the screen in mm (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo screenmmheight ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-mouse-x (&optional (w nil))
  "give x position of the mouse on screen (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo pointerx ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-mouse-y (&optional (w nil))
  "give y position of the mouse on screen (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata [winfo pointery ~a]" (if w (widget-path w) "."))
  (read-data))

(defun screen-mouse (&optional (w nil))
  "give the position of the mouse on screen as (x y) (if w is given, of the screen the widget w is displayed on)"
  (format-wish "senddata \"([winfo pointerxy ~a])\"" (if w (widget-path w) "."))
  (let ((vals (read-data)))
    (values (first vals) (second vals))))

(defun window-id (tl)
  "get the window id of the toplevel"
  (format-wish "senddatastring [winfo id ~a]" (widget-path tl))
  (read-data))

(Defun window-width (tl)
  "give the width of the toplevel in pixels"
  (format-wish "senddata [winfo width ~a]" (widget-path tl))
  (read-data))

(defun window-height (tl)
  "give the height of the toplevel in pixels"
  (format-wish "senddata [winfo height ~a]" (widget-path tl))
  (read-data))

(defun window-x (tl)
  "give the x position of the toplevel in pixels"
  (format-wish "senddata [winfo rootx ~a];flush stdout" (widget-path tl))
  (read-data))

(defun window-y (tl)
  "give the y position of the toplevel in pixels"
  (format-wish "senddata [winfo rooty ~a];flush stdout" (widget-path tl))
  (read-data))

;;; misc functions

(defun focus (widget)
  (format-wish "focus ~a" (widget-path widget)))

(defun force-focus (widget)
  (format-wish "focus -force ~a" (widget-path widget)))

;;; Dialog functions

(defun choose-color (&key parent title initialcolor )
  (format-wish "senddatastring [tk_chooseColor ~@[ -parent ~A~]~@[ -title {~A}~]~@[ -initialcolor {~A}~]]" (when parent (widget-path parent)) title initialcolor)
  (read-data))

(defun get-open-file (&key (filetypes '(("All Files" "*")))
			   (initialdir (namestring *default-pathname-defaults*))
			   multiple parent title)
  (let ((files
        (with-output-to-string (s)
          (format s "{")
          (dolist (type filetypes)
            (let ((name (first type))
                  (wildcard (second type)))
              (format s "{{~a} {~a}} " name wildcard)))
          (format s "}"))))
    (if multiple
	(format-wish "senddatastrings [tk_getOpenFile ~
                      -filetypes ~a ~@[ -initialdir {~a}~] -multiple 1 ~
                      ~@[ -parent ~a~] ~@[ -title {~a}~]]"
		      files initialdir 
		      (and parent (widget-path parent)) title)
	(format-wish "senddatastring [tk_getOpenFile ~
                      -filetypes ~a ~@[ -initialdir {~a}~]  ~
                      ~@[ -parent ~a~] ~@[ -title {~a}~]]"
		      files initialdir 
		      (and parent (widget-path parent)) title))
    (read-data)))

(defun get-save-file (&key (filetypes '(("All Files" "*"))))
  (let ((files
        (with-output-to-string (s)
          (format s "{")
          (dolist (type filetypes)
            (let ((name (first type))
                  (wildcard (second type)))
              (format s "{{~a} {~a}} " name wildcard)))
          (format s "}"))))
    (format-wish "senddatastring [tk_getSaveFile -filetypes ~a]" files)
    (read-data)))

(defun choose-directory (&key (initialdir (namestring *default-pathname-defaults*))
			      parent title mustexist)
  (format-wish "senddatastring [tk_chooseDirectory ~@[ -initialdir {~a}~]~@[ -parent ~a~]~@[ -title {~a}~]~@[ -mustexist ~a~]]" initialdir (and parent (widget-path parent)) title (and mustexist 1))
  (read-data))

(defvar *mb-icons* (list "error" "info" "question" "warning")
  "icon names valid for message-box function")

;;; see make-string-output-string/get-output-stream-string
(defun message-box (message title type icon)
  ;;; tk_messageBox function
  (format-wish "senddatastring [tk_messageBox -message {~a} -title {~a} -type {~a} -icon {~a}]" message title type icon)
  (read-keyword))


(defun ask-yesno(message &optional (title ""))
  (equal (message-box message title "yesno" "question") :yes))

(defun ask-okcancel(message &optional (title ""))
  (equal (message-box message title "okcancel" "question") :ok))

(defun do-msg(message  &optional (title ""))
  (message-box message title "ok" "info"))

#|
-type predefinedType
              Arranges for a predefined set of buttons to be dis
              played. The following values are possible for  pre
              definedType:

              abortretryignore  Displays three buttons whose sym
                                bolic names are abort, retry  and
                                ignore.

              ok                Displays  one  button  whose sym
                                bolic name is ok.

              okcancel          Displays two buttons  whose  sym
                                bolic names are ok and cancel.

              retrycancel       Displays  two  buttons whose sym
                                bolic names are retry and cancel.

              yesno             Displays  two  buttons whose sym
                                bolic names are yes and no.

              yesnocancel       Displays three buttons whose sym
                                bolic  names are yes, no and can
                                cel.
     -icon iconImage
              Specifies an icon to display. IconImage must be one
              of the following: error, info, question or warning.
              If this option is not specified, then the info icon
              will be displayed.

|#

;;;

(defun cm (tree widget-path)
  (cond
   ((eq tree :separator)
    (send-wish (format nil "~A add separator" widget-path)))
   ((listp (second tree))
    (let ((newpath (format nil "~A.~A" widget-path (create-name))))
      (when (and (equal widget-path ".menubar")
		 (or (equal (first tree) "Help")
		     (equal (first tree) "help")
		     (equal (first tree) "Hilfe")))
	(setf newpath ".menubar.help"))
      (send-wish (format nil "menu ~A -tearoff 0" newpath))
      (send-wish (format nil "~a add cascade -label \"~a\" -menu ~a" widget-path (first tree) newpath))
      (dolist (entry (second tree))
	(cm entry newpath))))
   (t
    (let* ((name (create-name)))
      (add-callback name (second tree))		     
      (send-wish (format nil "~A add command -label {~A} -command {puts -nonewline  {(\"~A\")};flush stdout}" widget-path (first tree) name))
      ))))

(defun create-menu2 (menutree)
  (send-wish (format nil "menu .menubar -tearoff 0 -type menubar"))
  (dolist (e menutree)
    (cm e ".menubar"))
  (send-wish (format nil ". configure -menu .menubar"))
  )  


;;;; Visual error handlers

(defun error-popup (message title icon)
  (ecase (message-box message title
                     (if (find-restart 'continue)
                         "yesno"
                         "ok")
                     icon)
    (:yes (continue))
    ((:ok :no) (abort))))

(defun debug-popup (condition title)
  (ecase (message-box (format nil "~A~%~%Do you wish to invoke the debugger?"
			      condition)
		      title "yesno" "question")
    (:yes (invoke-debugger condition))
    (:no (abort))))

(defun show-error (error)
  (error-popup (format nil "~A~@[~%~%~A?~]" error (find-restart 'continue))
	       "Error" "error"))

(defun note-error (error)
  (declare (ignore error))
  (error-popup "An internal error has occured." "Error" "error"))

(defun debug-error (error)
  (debug-popup error "Error"))

(defun show-warning (warn)
  (error-popup (princ-to-string warn) "Warning" :warning))

(defun debug-warning (warn)
  (debug-popup warn "Warning"))

(defun trivial-debugger (condition hook)
  (declare (ignore hook))
  (format *error-output* "~&An error of type ~A has occured: ~A~%"
	  (type-of condition) condition)
  #+sbcl (progn (sb-debug:backtrace most-positive-fixnum *error-output*)
		(quit))
  #+cmu (progn (debug:backtrace most-positive-fixnum *error-output*)
	       (quit)))

(defmacro with-ltk-handlers ((&rest keys) &body body)
  `(call-with-ltk-handlers (lambda () ,@body) ,@keys))

(defun call-with-ltk-handlers (thunk &key handle-errors handle-warnings (debugger t))
  (labels ((nothing (e) (declare (ignore e)) nil))
    (multiple-value-bind (simple-error error)
	(ecase handle-errors
	  ((t) (values #'show-error #'note-error))
	  (:simple (values #'show-error #'nothing))
	  (:debug (values #'nothing #'debug-error))
	  ((nil) (values #'nothing #'nothing)))
      (let ((warning (ecase handle-warnings
		       ((t) #'show-warning)
		       (:debug #'debug-warning)
		       ((nil) #'nothing)))
	    (*debugger-hook* (ecase debugger
			       ((t) *debugger-hook*)
			       ((nil) #'trivial-debugger))))
	(handler-bind ((simple-error simple-error)
		       (error error)
		       (warning warning))
		      (funcall thunk))))))


;;;; main event loop, runs until stream is closed by wish (wish exited) or
;;;; the variable *exit-mainloop* is set

(defvar *exit-mainloop* nil)
(defvar *break-mainloop* nil)

(defun break-mainloop ()
  (setf *break-mainloop* t))

(defun process-one-event (event)
  (when event
    (when *debug-tk*
      (format *trace-output* "l:~s<=~%" event)
      (force-output *trace-output*))
    (cond
     ((and (not (listp event))
           *trace-tk*)
      (princ event *trace-output*)
      (finish-output *trace-output*))
     ((not (listp event)) nil)
     ((eq (first event) :callback)
      (let ((params (rest event)))
        (callback (first params) (rest params))))
     ((eq (first event) :event)
      (let* ((params (rest event))
             (callback (first params))
             (evp (rest params))
             (event (construct-tk-event evp)))
        (callback callback (list event))))
     (t (callback (first event) (rest event))))))

(defun process-events ()
  "A function to temporarliy yield control to wish so that pending
events can be processed, useful in long loops or loops that depend on
tk input to terminate"
  (let (event)
    (loop 
     while (setf event (read-event :blocking nil))
     do
     (process-one-event event))))

(defun mainloop (&rest keys &key handle-errors handle-warnings debugger)
  (declare (ignore handle-errors handle-warnings debugger))

  (let ((*exit-mainloop* nil)
	(*break-mainloop* nil)
	(*read-eval* nil)) ;;safety against malicious clients
    (labels ((proc-event ()
			 (let ((event (read-event)))
			   (when (null event)
			     (close *wish*)
			     (setf *wish* nil)
			     (return-from mainloop))
			   (process-one-event event)
			   (when *break-mainloop*
			     (return-from mainloop))
			   (when *exit-mainloop*
			     (when ltk::*wish*
			       (send-wish "exit")
			       (close ltk::*wish*)
			       (setf ltk::*wish* nil)
			       (return-from mainloop)))))
	     (main ()
		   (loop (restart-case (proc-event)
				       (abort () :report "Abort handling Tk event")))))
      (apply #'call-with-ltk-handlers #'main keys))))


;;; another way to terminate the running app, send exit command to wish

(defun exit-wish()
  (send-wish "exit"))

;;; wrapper macro - initializes everything, calls body and then mainloop
;;; since 

(defmacro with-ltk ((&rest keys &key handle-errors handle-warnings (debugger t))
		    &body body)
  (declare (ignore handle-errors handle-warnings debugger))
  `(let ((ltk::*wish* nil)
	 (ltk::*callbacks* (make-hash-table :test #'equal))
	 (ltk::*counter* 1)
	 (ltk::*after-counter* 1)
	 (ltk::*event-queue* nil))
     (unwind-protect 
         (with-ltk-handlers (,@keys)
			    (start-wish)
			    ,@body
			    (mainloop))
       (when ltk::*wish*
	 (send-wish "exit")
	 (close ltk::*wish*)
	 (setf ltk::*wish* nil))
       )))
       

;;;; testing functions

(defvar *do-rotate* nil)
(defvar *demo-line* nil)
(defvar *demo-canvas* nil)

;;;; default ltk test
(defun ltktest()
  (with-ltk ()
      (let* ((bar (make-instance 'frame))
	     (fr (make-instance 'frame :master bar))
	     (lr (make-instance 'label :master fr :text "Rotation:"))
	     (bstart (make-instance 'button :master fr :text "Start" :command 'start-rotation))
	     (bstop  (make-instance 'button :master fr :text "Stop"  :command 'stop-rotation))
	     (b1 (make-instance 'button :master bar :text "Hallo"
				:command (lambda ()
					   (format T "Hallo~%")
					   (force-output))))
	     (b2 (make-instance 'button :master bar :text  "Welt!"
				:command (lambda ()
					   (format T "Welt~%")
					   (force-output))))
	     (f (make-instance 'frame :master bar))
	     (l (make-instance 'label :master f :text "Test:"))
	     (b3 (make-instance 'button :master f :text  "Ok." :command 'test-rotation))
	     (e (make-instance 'entry :master bar))
	     (b4 (make-instance 'button :master bar :text "get!"
				:command (lambda ()
					   (format T "content of entry:~A~%" (text e))
					   (force-output))))
	     (b5 (make-instance 'button :master bar :text "set!"
				:command (lambda () (setf (text e) "test of set"))))
	     (sc (make-instance 'scrolled-canvas :borderwidth 2 :relief :raised))
	     (c (canvas sc))
	     (lines nil)
	     (mb (make-menubar))
	     (mfile (make-menu mb "File" ))
	     (mf-load (make-menubutton mfile "Load" (lambda () (error)
						      (format t "Load pressed~&")
						      (force-output))
				       :underline 1))
	     (mf-save (make-menubutton mfile "Save" (lambda ()
						      (format t "Save pressed~&")
						      (force-output))
				       :underline 1))
	     (sep1 (add-separator mfile))
	     (mf-export (make-menu mfile "Export..."))
	     (sep2 (add-separator mfile))
	     (mf-print (make-menubutton mfile "Print" (lambda () (postscript c "wt.ps"))))
	     (sep3 (add-separator mfile))
	     (mfe-jpg (make-menubutton mf-export "jpeg" (lambda ()
							  (format t "Jpeg pressed~&")
							  (force-output))))
	     (mfe-gif (make-menubutton mf-export "png" (lambda ()
							 (format t "Png pressed~&")
							 (force-output))))
	     (mf-exit (make-menubutton mfile "Exit" (lambda () (setf *exit-mainloop* t))
				       :underline 1
				       :accelerator "Alt Q"))
	     (mp (make-menu nil "Popup"))
	     (mp-1 (make-menubutton mp "Option 1" (lambda () (format t "Popup 1~&") (force-output))))
	     (mp-2 (make-menubutton mp "Option 2" (lambda () (format t "Popup 2~&") (force-output))))
	     (mp-3 (make-menubutton mp "Option 3" (lambda () (format t "Popup 3~&") (force-output))))
	     )
	(declare (ignore mf-print mf-exit mfe-gif mfe-jpg mf-save mf-load sep1 sep2 sep3 mp-1 mp-2 mp-3)) 


	

	(bind *tk* "<Alt-q>" (lambda (event) (declare (ignore event)) (setf *exit-mainloop* t)))

	(bind c "<1>" (lambda (event) (popup mp (event-root-x event) (event-root-y event))))
	(configure c :borderwidth 2 :relief :sunken)
	(pack sc :side :top :fill :both :expand t)
	(pack bar :side :bottom)
	(scrollregion c 0 0 500 400)
	(pack fr :side :left)
	(pack lr :side :left)
	(configure fr :borderwidth 2 :relief :sunken)
	(pack bstart :side :left)
	(pack bstop :side :left)
	(pack b1 :side :left)
	(pack b2 :side :left)
	(configure f :borderwidth 2 :relief :sunken)
	(pack f :fill :x :side :left)
	(pack l :side :left)
	(pack b3 :side :left)
	(pack e :side :left)
	(pack b4 :side :left)
	(pack b5 :side :left)
	(dotimes (i 100)
	  (let ((w (* i 2.8001)))
	    (let ((x (+ 250 (* 150.0 (sin w))))
		  (y (+ 200 (* 150.0 (cos w)))))
	      (push y lines)
	      (push x lines)
	      )))
	(setf *demo-line* (create-line c lines))
	(setf *demo-canvas* c)
	(create-text c 10 10 "Ltk Demonstration")
	)))

(defvar *angle* 0)
(defvar *angle2* 0)
(defvar *angle3* 0)


(defun rotate()
  (let ((*debug-tk* nil))
    (let ((lines nil)
	  (dx (* 50 (sin *angle2*)))
	  (dy (* 50 (cos *angle2*)))
	  (wx (sin *angle3*))
;	  (wy (cos *angle3*))
	  )
      (incf *angle* 0.1)
      (incf *angle2* 0.03)
      (incf *angle3* 0.01)
      
      (dotimes (i 100)
	(let ((w (+ *angle* (* i 2.8001))))
	  (let ((x (+ dx 250 (* 150 (sin w) wx)))
		(y (+ dy 200 (* 150 (cos w)))))
	    (push y lines)
	    (push x lines)
	    )))    
      (set-coords *demo-canvas* *demo-line* lines))
    (if *do-rotate*
	(after 25 #'rotate))))

(defun test-rotation()
  (setf *debug-tk* nil)
  (time (dotimes (i 100)
	  (rotate)))
  (force-output)
  )
(defun start-rotation()
  (setf *debug-tk* nil)
  (setf *do-rotate* t)
  (rotate)
  )
(defun stop-rotation()
  (setf *debug-tk* t)
  (setf *do-rotate* nil)
  )


;;;; the eyes :)

(defun ltk-eyes ()
  (with-ltk ()
   (let* ((*debug-tk* nil)
	  (w (screen-width))
	  (h (screen-height))
	  (c (make-instance 'canvas :width 400 :height 300))
	  (e1 (create-oval c 10 10 190 290))
	  (e2 (create-oval c 210 10 390 290))
	  (p1 (create-oval c 10 10 40 40))
	  (p2 (create-oval c 10 10 40 40))
	  (old-x 0)
	  (old-y 0))
     (setf *debug-tk* nil)
     (labels ((update ()
		      (multiple-value-bind (pos-x pos-y) (screen-mouse)
			(let* ((wx (window-x *tk*))
			       (wy (window-y *tk*))
			       (width (window-width *tk*))
			       (height (window-height *tk*))
			       (mx pos-x)
			       (my pos-y)
			       (x (truncate (* width (/ mx w))))
			       (y (truncate (* height (/ my h))))
			       (diam (truncate width 8))
			       (dx1 (- mx (+ wx (truncate width 4))))
			       (dy1 (- my (+ wy (truncate height 2))))
			       (dx2 (- mx (+ wx (* 3 (truncate width 4)))))
			       (dy2 (- my (+ wy (truncate height 2))))
			       (p1x (+ (- (truncate width 4)  (truncate diam 2)) (truncate (* width  dx1) (* 4.5 w))))
			       (p1y (+ (- (truncate height 2) (truncate diam 2)) (truncate (* height dy1) (* 2.3 h))))
			       (p2x (+ (- (* 3 (truncate width 4))  (truncate diam 2)) (truncate (*  width  dx2) (* 4.5 w))))
			       (p2y (+ (- (truncate height 2) (truncate diam 2)) (truncate (* height dy2) (* 2.3 h))))
			       
			       )
			  (setf *debug-tk* nil)
			  (unless (and (= x old-x)
				       (= y old-y))
			    (set-coords c e1 (list 10 10 (- (truncate width 2) 10) (- height 10)))
			    (set-coords c e2 (list (+ (truncate width 2) 10) 10  (- width 10) (- height 10)))
			    (set-coords c p1 (list p1x p1y (+ diam p1x) (+ diam p1y)))
			    (set-coords c p2 (list p2x p2y (+ diam p2x) (+ diam p2y)))
			    (setf old-x x
				  old-y y))
			  ))
			(after 100 #'update)))
     (pack c :expand 1 :fill :both)
     (itemconfigure c e1 "width" 10)
     (itemconfigure c e2 "width" 10)
     (itemconfigure c p1 "fill" "blue")
     (itemconfigure c p2 "fill" "blue")
     (after 100 #'update)
     ))))

(defun input-box (prompt &key (title "Input"))
  (let* ((*exit-mainloop* nil)
	 (ok t)
	 (w (make-instance 'toplevel :title title))
	 (l (make-instance 'label :master w :text prompt))
	 (e (make-instance 'entry :master w :width 40))
	 (f (make-instance 'frame :master w))
	 (b_ok (make-instance 'button :master f :text "Ok" 
			      :command (lambda ()
					 (break-mainloop)
					 )))
	 (b_cancel (make-instance 'button :master f :text "Cancel" 
				  :command (lambda ()
					     (setf ok nil)
					     (break-mainloop)
					     )))
	 )
    (pack l :side :top :anchor :w)
    (pack e :side :top)
    (pack f :side :top :anchor :e)
    (pack b_cancel :side :right)
    (pack b_ok :side :right)
    (bind w "<Return>" (lambda (event)
			 (declare (ignore event))
			 (break-mainloop)))
    (focus e)
    (grab w)
    (mainloop)
    (grab-release w)
    (withdraw w)
    (and ok
	 (text e))
    ))
(defun modal-test ()
  (with-ltk ()
   (let* ((b (make-instance 'button :text "Input" 
			    :command (lambda ()
				       (let ((erg (input-box "Enter a string:" :title "String input")))
					 (if erg 
					     (format t "input was: ~a~%" erg)
					   (format t "input was cancelled~%"))
				       (force-output))))))
     (pack b))))

