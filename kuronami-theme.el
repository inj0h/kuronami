;;; kuronami-theme.el --- A deep blue theme with cool autumnal colors -*- lexical-binding: t; -*-

;; Author: Eric Chung <>
;; Version: 1.0.1
;; Filename: kuronami-theme.el
;; Package-Requires: ((emacs "24.1"))
;; URL: https://github.com/inj0h/kuronami
;; License: GPL-3+
;; SPDX-License-Identifier: GPL-3.0-or-later

;;; Commentary:

;; An Emacs theme with cool autumnal colors against a deep blue background.
;; Inspired by other Emacs themes - Deeper Blue shipped with most modern
;; versions of GNU Emacs, Gruber Darker by Alexey Kutepov, and Naysayer by
;; Nick Aversano. The character designs of Rei Ayanami and
;; Rei Ayanami (Tentative Name) from the anime Neon Genesis Evangelion by
;; Studio Khara/Gainax provided the main source of inspiration regarding the
;; central ideas behind the colors used in this theme.

;; This theme advocates the oxymoronic minimalist Emacs user. Popular third
;; party packages most likely do not have overwritten colors. Further, many
;; default Faces that Inherit other default Faces do not get overwritten.
;; Generally, only Faces that do not use Inherit have themed coloring though
;; exceptions exist.

;; A total of sixteen colors make up this theme. Eight of them stolen from other
;; Emacs themes or sampled from the Internet using color identifying software.
;; The other eight then derive from a subset of this first half. The website
;; https://www.color-hex.com provided much needed assistance in selecting these
;; derived colors according to the Analogous, Complementary, Triadic, Tint, and
;; Shade properties provided there. This theme's color declarations contain
;; in-line comments, attempting to explain the respective derivation process in
;; addition to crediting sources accordingly.

;;; Code:

(deftheme kuronami
  "Kuronami theme for Emacs. Cool colors against a deep blue background.")

;; NOTE: Kuronami colors with the same name generally have a dark-less-intense
;;       to a light-more-intense arrangement such that the former gets a lower
;;       number and the latter, a higher number. For example, "kuronami-blue0"
;;       has a darker, less intense blue than "kuronami-blue1," which has a
;;       lighter, more intense blue.
;;
;;       The author has historically struggled seeing and describing colors the
;;       way others do so please show some leniency if these descriptions do not
;;       make sense.
;;
;;       As mentioned earlier, each color declaration has an in-line comment
;;       describing its origin or derivation.
;;
(let ((kuronami-black0 "#181a26")   ; Stolen from the Deeper Blue Emacs theme.
      (kuronami-black1 "#202129")   ; black2 -> 3 Shades darker.
      (kuronami-black2 "#2f303b")   ; black0 -> 1 Tint lighter.
      (kuronami-blue0 "#2e41ac")    ; Sampled from an image of NGE Unit0 (blue).
      (kuronami-blue1 "#7fbbe9")    ; Sampled from official Ayanami Blue!
      (kuronami-blue2 "#abbfda")    ; yellow0 -> Complementary #97b0d1 -> 2 Tints lighter.
      (kuronami-gray0 "#595959")    ; Stolen from Emacs default "gray/grey 35."
      (kuronami-gray1 "#b3b3b3")    ; Stolen from Emacs default "gray/grey 70."
      (kuronami-green0 "#708b4c")   ; green3 -> 4 Shades darker.
      (kuronami-green1 "#668b8b")   ; Stolen from Emacs default "pale turquoise 4."
      (kuronami-green2 "#65bab4")   ; blue1 -> Analogous #7fe9e2 -> 2 Shades darker.
      (kuronami-green3 "#bbe97f")   ; blue1 -> Triadic.
      (kuronami-orange0 "#e9ad7f")  ; blue1 -> Complementary.
      (kuronami-red0 "#e97f86")     ; blue1 -> Triadic #e97fbb -> Analogous.
      (kuronami-white0 "#fffafa")   ; Stolen from Emacs default "snow."
      (kuronami-yellow0 "#d1b897")) ; Stolen from the Naysayer Emacs theme.
  (custom-theme-set-faces
   `kuronami

   ;;; Vanilla Faces:

   ;; UI Elements:
   `(cursor ((t (:background ,kuronami-red0))))
   `(default ((t (:background ,kuronami-black0 :foreground ,kuronami-yellow0))))
   `(error ((t (:foreground ,kuronami-red0 :weight bold))))
   `(fringe ((t (:background ,kuronami-black0))))
   `(highlight ((t (:background ,kuronami-green0))))
   `(isearch ((t (:background ,kuronami-red0 :foreground ,kuronami-black0))))
   `(lazy-highlight ((t (:background ,kuronami-green1))))
   `(line-number ((t (:foreground ,kuronami-blue2))))
   `(link ((t (:foreground ,kuronami-green2 :bold t :underline t))))
   `(link-visited ((t (:foreground ,kuronami-yellow0 :bold t :underline t))))
   `(match ((t (:inherit lazy-highlight))))
   `(minibuffer-prompt ((t (:foreground ,kuronami-white0))))
   `(region ((t (:extend nil :background ,kuronami-blue0)))) ; Mark to one past the final non-whitespace character kinda like Vi!
   `(show-paren-match ((t (:background ,kuronami-blue2))))
   `(show-paren-mismatch ((t (:background ,kuronami-red0))))
   `(success ((t (:foreground ,kuronami-green3 :weight bold))))
   `(warning ((t (:foreground ,kuronami-orange0 :weight bold))))

   ;; Font Lock:
   `(font-lock-builtin-face ((t (:foreground ,kuronami-white0))))
   `(font-lock-comment-face ((t (:foreground ,kuronami-blue1 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face ((t (:foreground ,kuronami-orange0))))
   `(font-lock-doc-face ((t (:foreground ,kuronami-green0))))
   `(font-lock-function-name-face ((t (:foreground ,kuronami-blue2))))
   `(font-lock-keyword-face ((t (:inherit font-lock-builtin-face))))
   `(font-lock-negation-char-face ((t (:foreground ,kuronami-red0))))
   `(font-lock-preprocessor-face ((t (:foreground ,kuronami-green3))))
   `(font-lock-string-face ((t (:foreground ,kuronami-green2))))
   `(font-lock-type-face ((t (:inherit font-lock-constant-face))))
   `(font-lock-variable-name-face ((t (:inherit font-lock-function-name-face))))
   `(font-lock-warning-face ((t (:foreground ,kuronami-red0 :bold t :italic t))))

   ;;; From this point, the Faces get organized alphabetically.

   ;; Compilation:
   `(compilation-column-number ((t (:foreground ,kuronami-white0))))
   `(compilation-line-number ((t (:foreground ,kuronami-blue2))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error))))

   ;; Completions:
   `(completions-common-part ((t (:foreground ,kuronami-white0))))
   `(completions-first-difference ((t (:foreground ,kuronami-orange0 :bold t))))

   ;; Flyspell:
   `(flyspell-duplicate ((t nil))) ; Setting "flyspell-duplicate-distance" does not work for Emacs 27.2 on macOS x86 so disable the Face. For now.
   `(flyspell-incorrect
     ((((supports :underline (:style wave))) (:underline (:color ,kuronami-red0 :style wave)))
      (t (:foreground ,kuronami-red0 :underline t :weight bold)))) ; For terminal Emacsclient.

   ;; Ido:
   `(ido-first-match ((t (:foreground ,kuronami-orange0 :italic t))))
   `(ido-only-match ((t (:foreground ,kuronami-green3 :bold t :italic t))))
   `(ido-subdir ((t (:foreground ,kuronami-blue2))))

   ;; Mode Line:
   `(mode-line ((t (:background ,kuronami-gray1 :foreground ,kuronami-black0)))) ; Just colors. No "boxing" effect.
   `(mode-line-buffer-id ((t nil)))
   `(mode-line-emphasis ((t nil)))
   `(mode-line-inactive ((t (:background ,kuronami-gray0 :foreground ,kuronami-gray1))))

   ;; Org:
   `(org-block ((t (:extend t :background ,kuronami-black1 :foreground ,kuronami-gray1))))
   `(org-done ((t (:foreground ,kuronami-green3 :weight bold))))
   `(org-table ((t (:foreground ,kuronami-blue1))))
   `(org-todo ((t (:foreground ,kuronami-orange0 :weight bold))))

   ;; Whitespace:
   `(trailing-whitespace ((t (:inherit whitespace-trailing)))) ; Different from whitespace-trailing? Shrug.
   `(whitespace-empty ((t (:background ,kuronami-red0 :foreground ,kuronami-black2))))
   `(whitespace-hspace ((t (:background ,kuronami-black0 :foreground ,kuronami-black2))))
   `(whitespace-indentation ((t (:inherit whitespace-empty))))
   `(whitespace-line ((t (:background ,kuronami-black0 :foreground ,kuronami-red0))))
   `(whitespace-newline ((t (:background ,kuronami-black0 :foreground ,kuronami-black2))))
   `(whitespace-space ((t (:background ,kuronami-black0 :foreground ,kuronami-black2))))
   `(whitespace-space-after-tab ((t (:inherit whitespace-empty))))
   `(whitespace-space-before-tab ((t (:inherit whitespace-empty))))
   `(whitespace-tab ((t (:background ,kuronami-black0 :foreground ,kuronami-black2))))
   `(whitespace-trailing ((t (:inherit whitespace-empty))))

   ;;; Programming Language Faces:
   ;; Nothing here yet.

   ;;; Third Party Faces:

   ;;; Programming Language Faces:

   ;; Markdown:
   `(markdown-code-face ((t (:extend t :background ,kuronami-black1 :foreground ,kuronami-gray1))))
   `(markdown-language-keyword-face ((t (:foreground ,kuronami-blue1))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'kuronami)
(provide 'kuronami-theme)
;;; kuronami-theme.el ends here.
