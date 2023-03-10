;;; doremi.el --- Do Re Mi: Incremental change using arrow keys or mouse wheel.
;;
;; Filename: doremi.el
;; Description: Incremental change using arrow keys or mouse wheel.
;; Author: Drew Adams
;; Maintainer: Drew Adams (concat "drew.adams" "@" "oracle" ".com")
;; Copyright (C) 2004-2022, Drew Adams, all rights reserved.
;; Created: Thu Sep 02 08:21:37 2004
;; Version: 0
;; Package-Requires: ()
;; Last-Updated: Wed Apr  6 09:57:27 2022 (-0700)
;;           By: dradams
;;     Update #: 1691
;; URL: https://www.emacswiki.org/emacs/download/doremi.el
;; Doc URL: https://www.emacswiki.org/emacs/DoReMi
;; Keywords: keys, cycle, repeat, higher-order
;; Compatibility: GNU Emacs: 20.x, 21.x, 22.x, 23.x, 24.x, 25.x, 26.x
;;
;; Features that might be required by this library:
;;
;;   `custom', `mwheel', `ring', `timer', `widget'.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;    Do Re Mi: Incremental change using arrow keys or mouse wheel.
;;
;; When you invoke Do Re Mi commands, you can then press and hold an
;; up/down arrow key, or turn the mouse wheel, to run up and down the
;; scale: Do, Re, Mi, Fa, So,...
;;
;; Use the up/down arrow keys or the mouse wheel to:
;;
;;  - Change nearly anything incrementally (dynamically).
;;
;;  - Repeat an action.
;;
;;  - Cycle through a set of values, without changing anything (for
;;    example, to choose an item).  In this use, think of choosing
;;    from a menu.  This is similar to using a minibuffer history.
;;    The input choices can take the form of any Emacs-Lisp sequence
;;    (list, array, string, vector) - this sequence is converted to a
;;    circular structure (ring).
;;
;;  - Do just about anything: call a different function for each
;;    arrow.
;;
;; This works with numerical parameters that can be incremented and
;; decremented, and it works with parameters that can take on one of a
;; number of values.  It's even more general than that: you can use it
;; to associate nearly any function or pair of functions with the
;; arrow keys and the mouse wheel.
;;
;; By default, the up and down arrow keys are used, but any other keys
;; can be used instead.  Mouse wheel rotations are recognized using
;; library `mwheel.el'.  `mouse-2' presses are ignored, so they don't
;; interfere with rotating the wheel.
;;
;; See the doc string for function `doremi' for more information.
;;
;; Code defining a few example commands is included here (but
;; commented out), so you can see how to use this.  For more examples
;; of using function `doremi', see files `doremi-frm.el' and
;; `doremi-cmd.el'.
;;
;; If you use this library in terminal mode (no graphic display) then
;; some features, such as mouse-wheel actions, won't be available.
;; But the basic features should work.
;;
;; For Emacs prior to release 23, this library requires library
;; `ring+.el', which provides extensions to the standard library
;; `ring.el' to let you manipulate circular structures.  (Library
;; `ring+.el' is part of GNU Emacs 23 and later.)
;;
;;
;;  User options (variables) defined here:
;;
;;    `doremi-boost-down-keys', `doremi-boost-scale-factor',
;;    `doremi-boost-up-keys', `doremi-boost-wheel-scale-factors',
;;    `doremi-down-keys', `doremi-up-keys'.
;;
;;  Non-interactive functions defined here:
;;
;;    `doremi', `doremi-intersection', `doremi-limit',
;;    `doremi-set-new-value', `doremi-wrap'.
;;
;;  Non-option variables defined here:
;;
;;    `doremi-modified-double-wheel-events',
;;    `doremi-modified-single-wheel-events',
;;    `doremi-modified-triple-wheel-events'.
;;
;;
;;  Add this to your initialization file (~/.emacs or ~/_emacs):
;;
;;    (require 'doremi)
;;
;;  See also these related libraries that make use of `doremi':
;;
;;    `doremi-frm.el' - Incrementally adjust frame properties.
;;    `doremi-cmd.el' - Other Do Re Mi commands.
;;    `doremi-mac.el' - Macro to define Do Re Mi commands and
;;                      automatically add them to Do Re Mi menu.
;;
;;  This has been tested on GNU Emacs 20, 21, and 22 on MS Windows.
;;
;;
;; TO DO?:
;;
;;   - Replace `boost-*' keys by tests for modifiers (as for wheel).
;;   - Combine with Customize.  That is, have Customize buffers use
;;     Do Re Mi commands to define numeric or enumeration values.
;;   - Provide buttons (menu items) in menus that act like up & down
;;     arrows.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;; 2022/04/06 dadams
;;     Added: doremi-boost-wheel-scale-factors, doremi-modified-double-wheel-events,
;;            doremi-modified-single-wheel-events, doremi-modified-triple-wheel-events, 
;;     doremi: Typo: flipped wheel-(down|up) let-binding.
;;             Handle modified wheel events for multiple boosting amounts.
;;             Thx to Keith Bershatsky for the suggestion.
;; 2022/03/18 dadams
;;     doremi: Moved test for event being mouse-2 or switch-frame inside the cond.
;; 2015/08/15 dadams
;;     doremi: If not display-graphic-p, use read-key instead of read-event.  Thx to Felix Esch.
;; 2015/07/08 dadams
;;     doremi: Use %S, not %s in error messages for unknown values.
;; 2013/06/06 dadams
;;     Do not require ring+.el unless prior to Emacs 23.
;; 2011/09/07 dadams
;;     doremi: Use mouse-wheel-(up|down)-event everywhere.  Thx to Michael Heerdegen.
;; 2011/01/04 dadams
;;     Removed autoload cookies from non-interactive functions.
;;     Added autoload cookies for defgroup, defcustom.
;; 2009/11/14 dadams
;;     doremi-wrap: Wrap value around, instead of just moving to the other limit.
;; 2009/11/07 dadams
;;     doremi: Increment can now be a list of numbers.
;;             Use >= 0, not natnump, since not necessarily an integer.
;; 2009/06/26 dadams
;;     Added: doremi-intersection.
;;     Renamed options doremi-...-key to doremi-...-keys, and made them lists.
;;     Added top-level warning when load the library if obsolete vars are boundp.
;;     doremi, doremi-set-new-value: Use these new list vars.
;;     doremi: Handle Emacs 23 mouse-wheel modifiers using doremi-intersection (ugly hack).
;; 2009/06/19 dadams
;;     doremi-*-key: fixed :type, clarified doc string about value.
;; 2009/06/18 dadams
;;     doremi: Use single-key-description in messages.
;; 2007/12/31 dadams
;;     doremi: Use doremi-set-new-value instead of wrapping input functions.
;;             Commented out setting redisplay-dont-pause to t.
;;     Added: doremi-set-new-value.
;;     oremi-boost-scale-factor: Clarified doc string.
;;      property -> parameter in all doc strings (RMS).
;; 2007/10/21 dadams
;;     doremi: Don't let switch-frame events quit the loop.
;;     Added: doremi-limit, doremi-wrap.
;; 2006/01/07 dadams
;;     Added :link.
;; 2005/07/25 dadams
;;     Added :prefix to defgroup.
;; 2005/01/16 dadams
;;     doremi: Bind redisplay-dont-pause to `t' for Emacs 21.
;;             Use error-message-string to format error string.
;; 2005/01/01 dadams
;;     defvar -> defcustom.  Added (defgroup doremi).
;; 2004/11/28 dadams
;;     doremi: Allowed for GROWTH-FN to be a function, not just a flag.
;;             Added initial value to initial prompt.
;;             Corrected addition of last event to unread-command-events.
;;             Improved error messages.
;; 2004/09/26 dadams
;;     Renamed do-re-mi* to doremi*.
;;     Prefixed everything here with doremi-.
;;     Changed convert-sequence-to-ring to ring-convert-sequence-to-ring.
;; 2004/09/24 dadams
;;     Added use of mouse wheel.  Changed key sequences to events.
;;     Change prompt to add Meta info only for non-enumeration.
;;     Suppress keystroke echoing.
;; 2004/09/19 dadams
;;     Moved doremi-buffers to doremi-cmd.el.
;;     Commented-out commands test-*.
;; 2004/09/11 dadams
;;     Moved to doremi-frm.el: adjust-*, cycle-frame-configs,
;;           grow-font, move-frame-*, and apply of push-frame-config.
;; 2004/09/07 dadams
;;     Added: cycle-frame-configs.
;;     Apply push-frame-config to frame commands here.
;; 2004/09/06 dadams
;;     Added boost-*.  Added error treatment to move-frame-*.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(require 'ring)
(unless (fboundp 'ring-member)          ; Emacs 23
  (require 'ring+))
  ;; ring-convert-sequence-to-ring, ring-insert+extend, ring-member, ring-next, ring-previous
(require 'mwheel nil t) ; (no error if not found): mwheel-event-button

;; Quiet the byte-compiler.
(defvar mouse-wheel-down-event)
(defvar mouse-wheel-left-event)
(defvar mouse-wheel-right-event)
(defvar mouse-wheel-up-event)

;;;;;;;;;;;;;;;;;;;;;;;;;;
 
;;; User Options (Variables)

;;;###autoload
(defgroup doremi nil
  "Do Re Mi: Incremental change using arrow keys or mouse wheel.
Define commands to perform repetitive or incremental operations."
  :prefix "doremi-" :group 'convenience
  :link `(url-link :tag "Send Bug Report"
          ,(concat "mailto:" "drew.adams" "@" "oracle" ".com?subject=\
doremi.el bug: \
&body=Describe bug here, starting with `emacs -q'.  \
Don't forget to mention your Emacs and library versions."))
  :link '(url-link :tag "Other Libraries by Drew"
          "https://www.emacswiki.org/emacs/DrewsElispLibraries")
  :link '(url-link :tag "Download"
          "https://www.emacswiki.org/emacs/download/doremi.el")
  :link '(url-link :tag "Description"
          "https://www.emacswiki.org/emacs/Doremi")
  :link '(emacs-commentary-link :tag "Commentary" "doremi"))

;;;###autoload
(defcustom doremi-up-keys '(up)
  "*Keys (events) associated with one direction of adjusting by `doremi'.
The other direction is associated with `doremi-down-keys'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\C-p' or `prior'."
  :type '(repeat (restricted-sexp :match-alternatives (integerp symbolp))) :group 'doremi)

;;;###autoload
(defcustom doremi-down-keys '(down)
  "*Keys (events) associated with one direction of adjusting by `doremi'.
The other direction is associated with `doremi-up-keys'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\C-n' or `next'."
  :type '(repeat (restricted-sexp :match-alternatives (integerp symbolp))) :group 'doremi)

;;;###autoload
(defcustom doremi-boost-up-keys '(M-up)
  "*Like `doremi-up-keys', but increments by `doremi-boost-scale-factor'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\M-p' or `S-prior'."
  :type '(repeat (restricted-sexp :match-alternatives (integerp symbolp))) :group 'doremi)

;;;###autoload
(defcustom doremi-boost-down-keys '(M-down)
  "*Like `doremi-down-keys', but increments by `doremi-boost-scale-factor'.

The value must be a list of keyboard events: characters or symbols.
For example, a list element might be `?\M-n' or `S-next'."
  :type '(repeat (restricted-sexp :match-alternatives (integerp symbolp))) :group 'doremi)

;;;###autoload
(defcustom doremi-boost-scale-factor 10
  "*Factor to boost incremental change of numerical properties.
Using `doremi-boost-up-keys' or `doremi-boost-down-keys', instead of
`doremi-up-keys' or `doremi-down-keys' means that the increment is
this many times larger.

Mouse wheel boosting is governed by option
`doremi-boost-wheel-scale-factors'."
  :type 'integer :group 'doremi)

(defcustom doremi-boost-wheel-scale-factors '(10 10 10)
  "*Boost factors for mouse wheel rotation with a modifier key.
A list of factors for slow, medium speed, and fast wheel rotation.

By default, this applies to modifiers Control, Meta, and Shift with
up/down rotation (left/right instead of up/down, for Shift with
macOS).  The first value in the list applies also to all other
modifiers, regardless of the speed of rotation.

Variables `doremi-modified-*-wheel-events' define the actual wheel
events this option affects.

For most mouse wheels Emacs doesn't register different events for
different rotation speeds, so by default the boost factors are equal."
  :type '(list (integer :tag "Single wheel event (slow)")
               (integer :tag "Double wheel event (medium speed)")
               (integer :tag "Triple wheel event (fast)"))
  :group 'doremi)


(defvar doremi-modified-single-wheel-events (append '(M-wheel-up M-wheel-down)
                                                    '(C-wheel-up C-wheel-down)
                                                    (if (eq system-type 'darwin)
                                                        '(S-wheel-left S-wheel-right)
                                                      '(S-wheel-up S-wheel-down)))
  "List of modified single mouse wheel events.
By default, this means Control, Meta, and Shift with up/down
rotation (left/right instead of up/down, for Shift with macOS).")

(defvar doremi-modified-double-wheel-events  (append '(M-double-wheel-up M-double-wheel-down)
                                                     '(C-double-wheel-up C-double-wheel-down)
                                                     (if (eq system-type 'darwin)
                                                         '(S-double-wheel-left S-double-wheel-right)
                                                       '(S-double-wheel-up S-double-wheel-down)))
  "List of modified double mouse wheel events.
By default, this means Control, Meta, and Shift with up/down
rotation (left/right instead of up/down, for Shift with macOS).")

(defvar doremi-modified-triple-wheel-events (append '(M-triple-wheel-up M-triple-wheel-down)
                                                    '(C-triple-wheel-up C-triple-wheel-down)
                                                    (if (eq system-type 'darwin)
                                                        '(S-triple-wheel-left S-triple-wheel-right)
                                                      '(S-triple-wheel-up S-triple-wheel-down)))
  "List of modified triple mouse wheel events.
By default, this means Control, Meta, and Shift with up/down
rotation (left/right instead of up/down, for Shift with macOS).")



;; Originally, the key-variable options were for a single key, not a list of keys.
;; Top-level warning when load the library.
(when (or (boundp 'doremi-up-key)    (boundp 'doremi-boost-up-key)
          (boundp 'doremi-down-key)  (boundp 'doremi-boost-down-key))
  (message "WARNING: Single-key options `doremi-...-key' are OBSOLETE. Use `doremi-...-keys'."))
 
;;; Non-Interactive Functions

(defun doremi (setter-fn init-val incr &optional growth-fn enum allow-new-p)
  "Use arrow keys and/or mouse wheel to adjust or cycle something.
Options `doremi-up-keys' and `doremi-down-keys' define lists of keys
that you can use to dynamically adjust any parameter.  The keys can be
held down for continual adjustment.  You can use the mouse wheel to
the same effect.

Example parameters include background color and font size, but a
parameter can be anything that is adjustable in any of these ways:
 * A numerical parameter that can be incremented or decremented, such
   as frame height.
 * A parameter that can take on one of several values (an enumerated
   choice), such as a frame background color.
 * A parameter that has an associated function to change its value
   incrementally.

SETTER-FN is a function that adjusts the parameter.  Two forms:
 1) It takes a value as argument and sets the parameter to this value.
 2) It is a \"growth\" function, which takes an increment as argument
    and incrementally adjusts the value of the parameter.

 Note that \"growth\" function really means, here, that the function
 takes an increment as argument and does the incrementation (or
 whatever) itself.  It is contrasted with an absolute SETTER-FN that
 just uses a value that is incremented by `doremi'.  The difference is
 which function does the incrementing, SETTER-FN or `doremi'.

 In case #1, the new parameter value _must_ be returned by SETTER-FN.
 In case #2, the new parameter value should be returned by SETTER-FN,
             so that it can be echoed to the user.

INIT-VAL is the initial value for adjustment.  In the case of an
 incremental growth function (case #2), this is ignored.

INCR is an adjustment increment.
 For an absolute SETTER-FN (#1), this is applied to INIT-VAL before
     calling the function.  If ENUM is non-nil, then INCR is ignored.
 For an incremental growth function, this is passed to the function.

INCR can be a number or a list of numbers.  When it is a list of
numbers, each is incremented or decremented (and possibly boosted by
`doremi-boost-scale-factor' - see below).

If GROWTH-FN is non-nil, then SETTER-FN is an incremental growth
  function (case #2), and it is called with INCR as its only argument.
If GROWTH-FN is a function, then it is used as an alternative growth
  function.  In this case, SETTER-FN is called for `doremi-up-keys'
  and GROWTH-FN is called for `doremi-down-keys' (mouse wheel is
  similar).

ENUM is a choice-enumeration sequence (list, array, string...).
  If ENUM is non-nil, then it is converted to a ring (circular
  structure), and `doremi-up-keys' and `doremi-down-keys' set the
  parameter to `ring-next' and `ring-previous' values, respectively.

If ENUM is non-nil, then ALLOW-NEW-P defines what happens if INIT-VAL
is not a member of ENUM.  If ALLOW-NEW-P is nil, then an error is
raised.  If non-nil, then INIT-VAL is added (to the ring created from
ENUM).  If the symbol `extend', then if the ring is full it is
extended to include INIT-VAL; other non-nil values cause the oldest
item in a full ring to be dropped.

For numerical parameters (not enumerated choices), there are actually
two levels of incrementation.  For faster incrementation, you can use
the keys defined by options `doremi-boost-up-keys' and
`doremi-boost-down-keys'.  Incrementation is then option
`doremi-boost-scale-factor' times faster.

You can also boost incrementation using the mouse wheel with keyboard
modifiers (Shift, Meta, Control...).  In this case, option
`doremi-boost-wheel-scale-factors' specifies boost factors for slow,
medium, and fast mouse-wheel rotation.  (By default these factors are
equal, since most mouse wheels Emacs doesn't register different events
for different rotation speeds.)

Mouse wheels differ in their sensitivity, and applications of `doremi'
can differ in how finely grained you want mouse rotation to increment
something.  When using function `doremi' in code you can bind option
`doremi-boost-wheel-scale-factors' to an appropriate value to get the
behavior you want.

Variables `doremi-modified-*-wheel-events' define the actual wheel
events that option `doremi-boost-wheel-scale-factors' affects.

For most mouse wheels Emacs doesn't register different events for
different rotation speeds, so by default the boost factors are equal.

For some examples of using `doremi', see the source code of libraries
`doremi.el', `doremi-frm.el', and `doremi-cmd.el'."
  (setq incr  (or incr  1))
  (let ((new-incr  incr))
    ;; $$$$ (redisplay-dont-pause t))       ; To give continual feedback.
    ;; Convert sequence of values (list, array, vector, string) to a ring.
    (when (and enum  (sequencep enum)) (setq enum  (ring-convert-sequence-to-ring enum)))

    ;; Loop.  Prompt, read event, and act on arrow-key or mouse-wheel event.
    (let ((prompt           (format "Use %s, %s, or mouse wheel to adjust value"
                                    (single-key-description (car doremi-up-keys))
                                    (single-key-description (car doremi-down-keys))))
          (keys             (append doremi-up-keys       doremi-down-keys
                                    doremi-boost-up-keys doremi-boost-down-keys))
          (echo-keystrokes  0)          ; Suppress keystroke echoing.
          ;; Free vars here: `mouse-wheel-*-event' - defined in `mwheel.el'.
          (wheel-down       (if (boundp 'mouse-wheel-down-event)
                                mouse-wheel-down-event
                              'wheel-down)) ; Emacs 20.
          (wheel-up         (if (boundp 'mouse-wheel-up-event)
                                mouse-wheel-up-event
                              'wheel-up)) ; Emacs 20.
          (wheel-left       (if (boundp 'mouse-wheel-left-event)
                                mouse-wheel-left-event
                              'wheel-left)) ; Emacs 20.
          (wheel-right      (if (boundp 'mouse-wheel-right-event)
                                mouse-wheel-right-event
                              'wheel-right)) ; Emacs 20.
          evnt save-prompt)
      (unless enum (setq prompt  (concat prompt " (modifier key: faster)")))
      (setq prompt       (format (concat prompt ".  Value now: %s") init-val)
            save-prompt  prompt)
      (while (progn (setq evnt    (if (if (fboundp 'display-graphic-p)
                                          (display-graphic-p)
                                        window-system)
                                      (read-event prompt)
                                    (read-key prompt))
                          prompt  nil)
                    (or (member evnt keys)
                        (and (consp evnt)  (member (event-basic-type (car evnt))
                                                   `(switch-frame mouse-wheel mouse-2
                                                                  ,wheel-up   ,wheel-down
                                                                  ,wheel-left ,wheel-right)))))
        ;; Set up the proper increment value.
        (cond ((member evnt doremi-up-keys) (setq new-incr  incr)) ; +
              ((member evnt doremi-down-keys)                      ; -
               (setq new-incr  (if (atom incr) (- incr) (mapcar #'- incr))))
              ((member evnt doremi-boost-up-keys) ; ++
               (setq new-incr  (if (atom incr)
                                   (* doremi-boost-scale-factor incr)
                                 (mapcar #'(lambda (in) (* doremi-boost-scale-factor in)) incr))))
              ((member evnt doremi-boost-down-keys) ; --
               (setq new-incr  (if (atom incr)
                                   (* doremi-boost-scale-factor (- incr))
                                 (mapcar #'(lambda (in) (* doremi-boost-scale-factor (- in))) incr))))

              ;; Emacs 20 mouse wheel.
              ((and (consp evnt)  (equal 'mouse-wheel (event-basic-type (car evnt))))
               (setq new-incr  (if (< 0 (nth 2 evnt))
                                   incr
                                 (if (atom incr) (- incr) (mapcar #'- incr))))
               (when (event-modifiers evnt) ; Boost it
                 (setq new-incr  (if (atom new-incr)
                                     (* doremi-boost-scale-factor new-incr)
                                   (mapcar #'(lambda (in) (* doremi-boost-scale-factor in)) new-incr)))))

              ;; Emacs 21+ mouse wheel: `mwheel.el'
              ((and (consp evnt)  (member (event-basic-type (car evnt))
                                          `(,wheel-up ,wheel-down ,wheel-left ,wheel-right)))
               (let ((button  (mwheel-event-button evnt)))
                 (cond ((memq button (list wheel-down wheel-left)) (setq new-incr  incr))
                       ((memq button (list wheel-up   wheel-right))
                        (setq new-incr  (if (atom incr) (- incr) (mapcar #'- incr))))
                       (t (error "`doremi', bad mwheel-scroll binding - report bug to %s%s%s%s"
                                 "drew.adams" "@" "oracle" ".com"))))
               (let ((evt  (car evnt)))
                 (if (or (and (> emacs-major-version 22) ; Boost it
                              (doremi-intersection (event-modifiers evnt)
                                                   '(shift control meta alt hyper super)))
                         (and (<= emacs-major-version 22)  (event-modifiers evnt))) ; Boost it
                     (let* ((factor  (car  doremi-boost-wheel-scale-factors))
                            (factor  (cond ((and (= factor (cadr  doremi-boost-wheel-scale-factors))
                                                 (= factor (caddr doremi-boost-wheel-scale-factors)))
                                            factor) ; No difference
                                           ((memq evt doremi-modified-single-wheel-events) ; Single
                                            factor)
                                           ((memq evt doremi-modified-double-wheel-events) ; Double
                                            (cadr doremi-boost-wheel-scale-factors))
                                           ((memq evt doremi-modified-triple-wheel-events) ; Triple
                                            (caddr doremi-boost-wheel-scale-factors))
                                           (t ; Other modifiers - ignore wheel speed
                                            factor))))
                       (setq new-incr  (if (atom new-incr)
                                           (* factor new-incr)
                                         (mapcar #'(lambda (in) (* factor in)) new-incr)))))))

              ((and (consp evnt)  (memq (event-basic-type (car evnt)) '(mouse-2 switch-frame)))
               (message save-prompt)) ; Just skip mouse-2 event (ignore while using wheel).
              (t (error "`doremi', unexpected event: `%S' - report bug to %s%s%s%s"
                        evnt "drew.adams" "@" "oracle" ".com")))

        ;; Adjust setting and update INIT-VAL.  Four cases are treated separately:
        ;; 1) ENUM non-nil: use `ring-next' and `ring-previous'.
        ;; 2) SETTER-FN and GROWTH-FN are both "growth" functions: call one of them.
        ;; 3) SETTER-FN is a "growth" function: call it on the INCR arg.
        ;; 4) otherwise (absolute fn): increment INIT-VAL, then call SETTER-FN on it.
        (condition-case failure
            (setq init-val  (cond (;; 1) Ring of values (enumeration list).  Use `ring-next''...
                                   (ring-p enum)
                                   ;; If INIT-VAL is not already in the ring, add it.
                                   ;; Extend the ring size if ALLOW-NEW-P is `extend'.
                                   (when (and allow-new-p  (not (ring-member enum init-val)))
                                     (ring-insert+extend enum init-val (eq 'extend allow-new-p)))
                                   (when (< (ring-length enum) 2)
                                     (error "`doremi' - Need at least two alternatives: %S" enum))
                                   (let* ((vec     (cdr (cdr enum)))
                                          (veclen  (length vec)))
                                     (doremi-set-new-value setter-fn
                                                           (if (and (numberp new-incr) (>= new-incr 0))
                                                               (ring-next enum init-val)
                                                             (ring-previous enum init-val)))))

                                  ;; 2) Two incremental growth functions.  Call one on (new) INCR only.
                                  ((functionp growth-fn)
                                   (if (atom new-incr)
                                       (if (and (numberp new-incr)  (>= new-incr 0))
                                           (doremi-set-new-value setter-fn new-incr)
                                         (doremi-set-new-value growth-fn (- new-incr)))
                                     (if (and (numberp (car new-incr))  (>= (car new-incr) 0))
                                         (doremi-set-new-value setter-fn new-incr)
                                       (doremi-set-new-value growth-fn (mapcar #'- new-incr)))))

                                  ;; 3) Single incremental growth function.  Call it on (new) INCR only.
                                  (growth-fn (doremi-set-new-value setter-fn new-incr))

                                  ;; 4) Otherwise.  Increment value.  Call setter function on new value.
                                  ((and (numberp new-incr)  (numberp init-val))
                                   (doremi-set-new-value setter-fn (+ init-val new-incr)))
                                  (t (error "`doremi' - Bad argument.  INIT-VAL: %S, INCR: %S"
                                            init-val new-incr))))
          (error (error "%s" (error-message-string failure)))))
      (message nil)
      (setq unread-command-events  (cons evnt unread-command-events)))))

(defun doremi-intersection (list1 list2)
  "Set intersection of lists LIST1 and LIST2.
This is a non-destructive operation: it copies the data if necessary."
  (and list1  list2  (if (equal list1 list2)
                         list1
                       (let ((result  ()))
                         (unless (>= (length list1) (length list2))
                           (setq list1  (prog1 list2 (setq list2  list1)))) ; Swap them.
                         (while list2
                           (when (member (car list2) list1) (setq result  (cons (car list2) result)))
                           (setq list2  (cdr list2)))
                         result))))

(defun doremi-set-new-value (setter-fn newval)
  "Apply SETTER-FN to NEWVAL, and return NEWVAL.  Display progress message."
  (prog1 (setq newval  (funcall setter-fn newval))
    (message "Use %s, %s, or mouse wheel again.  New value: %s"
             (single-key-description (car doremi-up-keys))
             (single-key-description (car doremi-down-keys))
             newval)))

(defun doremi-limit (value min max)
  "Limit VALUE to MIN or MAX limit if either is overshot.
MIN or MAX = nil means no such limit.
Return the new, possibly limited value."
  (cond ((and max  (> value max))  max)
        ((and min  (< value min))  min)
        (t                         value)))

;; $$$$$
;; (defun doremi-wrap (value min max)
;;   "Wrap VALUE around if it overshoots MIN or MAX."
;;   (cond ((> value max) min)
;;         ((< value min) max)
;;         (t value)))

(defun doremi-wrap (value min max)
  "Wrap VALUE around if it overshoots MIN or MAX.
Return the new, wrapped value.
MAX must be greater than min."
  (let ((new  value)
        (del  (- max min)))
    (while (> new max) (setq new  (- new del)))
    (while (< new min) (setq new  (+ new del)))
    new))
 
;;; Example Commands.  Uncomment these and try them to get the idea.
;;
;; See also the commands in `doremi-cmd.el' and `doremi-frm.el' for
;; more examples.


;; Uses an enumeration list, (buffer-list).
;; (defun doremi-buffers+ ()
;;   "Successively cycle among existing buffers."
;;   (interactive)
;;   (doremi (lambda (newval) (switch-to-buffer newval 'norecord) newval)
;;            (current-buffer)
;;            nil                         ; ignored
;;            nil                         ; ignored
;;            (buffer-list)))

;; Test command that uses an enumeration list.
;; This command changes nothing.  It just echoes successive values.
;; (defun test-list+ ()
;;   (interactive)
;;   (doremi (lambda (newval) newval) 'c 1 nil '(a b c d e f g)))

;; Test command that uses an enumeration list.
;; In this test, the init-val is not a member of the enumeration list.
;; An error is raised.
;; This command changes nothing.  It just echoes successive values.
;; (defun test-list-prohibit-nonmember+ ()
;;   (interactive)
;;   (doremi (lambda (newval) newval) 'c 1 nil '(a b)))

;; Test command that uses an enumeration list.
;; In this test, the init-val is not a member of the enumeration list.
;; Because of non-nil 6th arg ALLOW-NEW-P, the initial value 'c is added
;; to the enumeration.
;; This command changes nothing.  It just echoes successive values.
;; (defun test-list-allow-nonmember+ ()
;;   (interactive)
;;   (doremi (lambda (newval) newval) 'c 1 nil '(a b) t))

;; Test command that uses an enumeration list.
;; In this test, the init-val is not a member of the enumeration list.
;; Because 6th arg ALLOW-NEW-P is 'extend, the enumeration is enlarged
;; to include the initial value 'c.
;; This command changes nothing.  It just echoes successive values.
;; (defun test-list-allow-nonmember+extend+ ()
;;   (interactive)
;;   (doremi (lambda (newval) newval) 'c 1 nil '(a b) 'extend))

;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'doremi)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; doremi.el ends here
