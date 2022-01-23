;;; kuronami-theme.el --- A deep blue theme with cool autumnal colors.

;; Author: Eric Chung <>
;; Version: 0.0
;; Filename: kuronami-theme.el
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/super3ggo/kuronami
;; License: GPL-3+

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

;; A total of sixteen colors make up this theme. Seven of them stolen from other
;; Emacs themes or sampled from the Internet using color identifying software.
;; The other nine then derive from a subset of these seven. The website
;; https://www.color-hex.com provided much needed assistance in selecting these
;; derived colors according to the Analogous, Complementary, Triadic, Tint, and
;; Shade properties provided there. This theme's color declarations contain
;; in-line comments, attempting to explain the respective derivation process in
;; addition to crediting the sources of the main seven colors.

;;; Code:

(deftheme kuronami
  "Kuronami theme for Emacs. Cool colors against a deep blue background.")

(let ((kuronami-black-00  "#181a26")  ; Stolen from the Deeper Blue Emacs theme.
      (kuronami-black-01  "#202129")  ; black-02 -> 3 Shades darker.
      (kuronami-black-02  "#2f303b")  ; black-00 -> 1 Tint lighter.
      (kuronami-blue-00   "#455196")  ; blue-01 -> 2 Tints lighter #5766bc -> 2 Shades darker.
      (kuronami-blue-01   "#2e41ac")  ; Sampled from an image of NGE Unit-00 (blue).
      (kuronami-blue-02   "#7fbbe9")  ; Sampled from official Ayanami Blue!
      (kuronami-blue-03   "#abbfda")  ; yellow-00 -> Complementary #97b0d1 -> 2 Tints lighter.
      (kuronami-gray-00   "#b3b3b3")  ; Stolen from Emacs default "gray/grey 70."
      (kuronami-green-00  "#708b4c")  ; green-03 -> 4 Shades darker.
      (kuronami-green-01  "#668b8b")  ; Stolen from Emacs default "pale turquoise 4."
      (kuronami-green-02  "#65bab4")  ; blue-02 -> Analogous #7fe9e2 -> 2 Shades darker.
      (kuronami-green-03  "#bbe97f")  ; blue-02 -> Triadic.
      (kuronami-orange-00 "#e9ad7f")  ; blue-02 -> Complementary.
      (kuronami-red-00    "#e97f86")  ; blue-02 -> Triadic #e97fbb -> Analogous.
      (kuronami-white-00  "#fffafa")  ; Stolen from Emacs default "snow."
      (kuronami-yellow-00 "#d1b897")) ; Stolen from the Naysayer Emacs theme.
  (custom-theme-set-faces
   `kuronami

   ;;; Vanilla Faces:

   ;; UI Elements:
   `(cursor              ((t (:background ,kuronami-red-00))))
   `(default             ((t (:background ,kuronami-black-00 :foreground ,kuronami-yellow-00))))
   `(error               ((t (:foreground ,kuronami-red-00 :weight bold))))
   `(fringe              ((t (:background ,kuronami-black-00))))
   `(highlight           ((t (:background ,kuronami-green-00))))
   `(hl-line             ((t (:background ,kuronami-blue-00))))
   `(isearch             ((t (:background ,kuronami-red-00 :foreground ,kuronami-black-00))))
   `(lazy-highlight      ((t (:background ,kuronami-green-01))))
   `(line-number         ((t (:foreground ,kuronami-blue-03))))
   `(link                ((t (:foreground ,kuronami-green-02 :bold t :underline t))))
   `(link-visited        ((t (:inherit link :foreground ,kuronami-yellow-00))))
   `(match               ((t (:inherit lazy-highlight))))
   `(minibuffer-prompt   ((t (:foreground ,kuronami-white-00))))
   `(region              ((t (:extend nil :background ,kuronami-blue-01)))) ; Mark to one past the final non-whitespace character kinda like Vi!
   `(show-paren-match    ((t (:background ,kuronami-blue-03))))
   `(show-paren-mismatch ((t (:background ,kuronami-red-00))))
   `(success             ((t (:foreground ,kuronami-green-03 :weight bold))))
   `(warning             ((t (:foreground ,kuronami-orange-00 :weight bold))))

   ;; Font Lock:
   `(font-lock-builtin-face           ((t (:foreground ,kuronami-white-00))))
   `(font-lock-comment-face           ((t (:foreground ,kuronami-blue-02 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
   `(font-lock-constant-face          ((t (:foreground ,kuronami-orange-00))))
   `(font-lock-doc-face               ((t (:foreground ,kuronami-green-00))))
   `(font-lock-function-name-face     ((t (:foreground ,kuronami-blue-03))))
   `(font-lock-keyword-face           ((t (:inherit font-lock-builtin-face))))
   `(font-lock-negation-char-face     ((t (:foreground ,kuronami-red-00))))
   `(font-lock-preprocessor-face      ((t (:foreground ,kuronami-green-03))))
   `(font-lock-string-face            ((t (:foreground ,kuronami-green-02))))
   `(font-lock-type-face              ((t (:inherit font-lock-constant-face))))
   `(font-lock-variable-name-face     ((t (:inherit font-lock-function-name-face))))
   `(font-lock-warning-face           ((t (:inherit font-lock-negation-char-face :bold t :italic t))))

   ;;; From this point, the Faces get organized alphabetically.

   ;; Compilation:
   `(compilation-column-number  ((t (:foreground ,kuronami-white-00))))
   `(compilation-line-number    ((t (:foreground ,kuronami-blue-03))))
   `(compilation-mode-line-exit ((t (:inherit compilation-info))))
   `(compilation-mode-line-fail ((t (:inherit compilation-error))))

   ;; Completions:
   `(completions-common-part      ((t (:foreground ,kuronami-white-00))))
   `(completions-first-difference ((t (:foreground ,kuronami-orange-00 :bold t))))

   ;; Flyspell:
   `(flyspell-duplicate ((t nil))) ; NOTE: Setting "flyspell-duplicate-distance" does not work for Emacs 27.2 on macOS x86 so disable the Face for now I guess.
   `(flyspell-incorrect
     ((((supports :underline (:style wave))) (:underline (:color ,kuronami-red-00 :style wave)))
      (t (:foreground ,kuronami-red-00 :underline t :weight bold)))) ; For terminal Emacsclient.

   ;; Ido:
   `(ido-first-match ((t (:foreground ,kuronami-orange-00 :italic t))))
   `(ido-only-match  ((t (:foreground ,kuronami-green-03 :bold t :italic t))))
   `(ido-subdir      ((t (:foreground ,kuronami-blue-03))))

   ;; Mode Line:
   `(mode-line           ((t (:background ,kuronami-gray-00 :foreground ,kuronami-black-00)))) ; Just colors. No "boxing" effect.
   `(mode-line-buffer-id ((t nil)))
   `(mode-line-emphasis  ((t nil)))
   `(mode-line-inactive  ((t (:background ,kuronami-black-00 :foreground ,kuronami-gray-00))))

   ;; Org:
   `(org-block ((t (:inherit shadow :extend t :background ,kuronami-black-01))))
   `(org-done  ((t (:foreground ,kuronami-green-03 :weight bold))))
   `(org-table ((t (:foreground ,kuronami-blue-02))))
   `(org-todo  ((t (:foreground ,kuronami-orange-00 :weight bold))))

   ;; Whitespace:
   `(trailing-whitespace         ((t (:inherit whitespace-trailing)))) ; Different from whitespace-trailing? Shrug.
   `(whitespace-empty            ((t (:background ,kuronami-red-00 :foreground ,kuronami-black-02))))
   `(whitespace-hspace           ((t (:background ,kuronami-black-00 :foreground ,kuronami-black-02))))
   `(whitespace-indentation      ((t (:inherit whitespace-empty))))
   `(whitespace-line             ((t (:background ,kuronami-black-00 :foreground ,kuronami-red-00))))
   `(whitespace-newline          ((t (:background ,kuronami-black-00 :foreground ,kuronami-black-02))))
   `(whitespace-space            ((t (:background ,kuronami-black-00 :foreground ,kuronami-black-02))))
   `(whitespace-space-after-tab  ((t (:inherit whitespace-empty))))
   `(whitespace-space-before-tab ((t (:inherit whitespace-empty))))
   `(whitespace-tab              ((t (:background ,kuronami-black-00 :foreground ,kuronami-black-02))))
   `(whitespace-trailing         ((t (:inherit whitespace-empty))))

   ;;; Programming Language Faces:
   ;; Nothing here yet.

   ;;; Third Party Faces:

   ;; Company:
   `(company-tooltip                 ((t (:background ,kuronami-black-01))))
   `(company-tooltip-annotation      ((t (:foreground ,kuronami-blue-03))))
   `(company-tooltip-common          ((t (:foreground ,kuronami-green-03))))
   `(company-tooltip-scrollbar-thumb ((t (:inherit company-tooltip))))
   `(company-tooltip-scrollbar-track ((t (:inherit company-tooltip))))
   `(company-tooltip-selection       ((t (:background ,kuronami-green-01))))

   ;;; Programming Language Faces:

   ;; Markdown:
   `(markdown-code-face             ((t (:inherit fixed-pitch :foreground ,kuronami-blue-02))))
   `(markdown-language-keyword-face ((t (:foreground ,kuronami-blue-02))))

   ;; Rust:
   `(rust-builtin-formatting-macro ((t (:inherit font-lock-preprocessor-face)))))) ; Not sure why this package uses a different color for these macros.

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'kuronami)
