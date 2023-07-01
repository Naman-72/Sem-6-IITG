(defstruct contact
    name
    phone_no
    email
    )

(defvar address_book nil)

(defvar choice 0)
(defvar nameIns "none")
(defvar phoneNoIns "0" )
(defvar emailIns "0" )
(defvar itr 0)
(defvar pos nil)
(defvar pos2 nil)
(defvar subs "")

(defun validate_email (email)
  (setq pos (position #\@ email))
  (if pos
    (progn
        (setq subs (subseq email (+ pos 1)))
        (setq pos2 (position #\. subs))
        (if pos2
            (return-from validate_email T)
            (return-from validate_email nil)
        )
        (if (zerop pos)
            (return-from validate_email nil)
            (return-from validate_email T)
        )
    )
    (return-from validate_email nil)
  )
)

(defun validate_phone(str)
  (or 
      (not(ignore-errors (parse-integer str :junk-allowed t))) ;; checks if string can be parsed to int
      (not(=(length str) 10)) ;; validates phone number size
  )
)

(defun get_email()
    (loop
        (princ "Enter email: ")
        (setq emailIns (read-line))
        (if (validate_email emailins)
            (return)
            (progn
                (princ "Enter valid email address")
                (fresh-line)
            )
        )
    )
)

(defun get_phone()
    (loop
        (princ "Enter phone-no: ")
        (setq phoneNoIns (read-line))
        (if (validate_phone phoneNoIns)
            (progn
                (princ "Enter valid phone no")
                (fresh-line)
            )
            (return)
        )
    )
)

(defun get_name()
    (loop
        (princ "Enter name: ")
        (setq nameIns (read-line))
        (if (string= "" nameIns)
            (write-line "Enter non null name") 
            (return)
        )
    )
)

(defun add_contact ()
  (get_name)
  (get_phone)
  (get_email)

  (let ((existing-contact (find-if (lambda (contact) (and (string= nameIns (contact-name contact))
                                                           (string= phoneNoIns (contact-phone_no contact))
                                                           (string= emailIns (contact-email contact))))
                                    address_book)))
    
    (if existing-contact
        (write-line "Entry is already present")
        (progn
          (write-line "Entry added!")
          (setf address_book (append address_book (list (make-contact :name nameIns :phone_no phoneNoIns :email emailIns))))))
    )
)

(defun search_contact ()
    (princ "Enter name to be searched:")
    (setq nameIns (read-line))
    (dolist (elem address_book)
        (if (string= (contact-name elem) nameIns)
            (progn
                (format t "Name: ~a, Phone_no: ~a, Email: ~a" (contact-name elem) (contact-phone_no elem) (contact-email elem))
                (terpri)
                (incf itr) 
            )
        )
    )

    (
        if(zerop itr)
        (write-line "No entry found.")
        (setq itr 0)
    )
)

(defun print_book()
    (write-line "The address_book is:")
    (dolist (elem address_book)
    (format t "Name: ~a, Phone_no: ~a, Email: ~a" (contact-name elem) (contact-phone_no elem) (contact-email elem))
    (terpri)) ; new line
)



(loop
    (princ "Enter 1 to add contact, 2 to search,3 to print entire address book, 4 to exit : ")
    (setq choice (parse-integer (read-line)))

    (case choice
    (1 
        (add_contact)
    )

    (2 
        (search_contact)
    )

    (3 
        (print_book)
    )

    (4 
        (return)
    )
    (otherwise (print "Invalid option")))
)