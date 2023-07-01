(defvar *address-book* '())
(defvar x 0)

(format t "Below are the Integer to function mappings :~%")
(format t "1 : To add a new contact~%")
(format t "2 : To search for a contact~%")
(format t "3 : To print address book~%")
(format t "4 : To break~%~%")

(defun add-contact ()
  (format t "Enter Name: ")
  (let ((name (read-line)))
    (format t "Enter Phone Number: ")
    (let ((phone (read-line)))
      (format t "Enter Email Address: ")
      (let ((email (read-line)))
        (push (list :name name :phone phone :email email) *address-book*)
        (format t "Contact added successfully.~%~%")))))

(defun search-contact ()
  (setq x 0)
  (format t "Enter Name: ")
  (let ((name (read-line)))
    (dolist (contact *address-book*)
      (when (string= name (getf contact :name))
        (setq x 1)
          (format t "Name: ~a , Phone: ~a , Email: ~a~%" 
                  (getf contact :name) 
                  (getf contact :phone) 
                  (getf contact :email)))))
                  (if (= x 0)
                  (format t "No Record Found~%"))
                  (format t "~%"))

(defun print-address-book ()
  (nreverse *address-book*)
  (dolist (contact *address-book*)
    (format t "Name: ~a , Phone: ~a , Email: ~a~%" 
            (getf contact :name) 
            (getf contact :phone) 
            (getf contact :email)))(nreverse *address-book*)(format t "~%"))

(defun process-input ()
  (loop
    (format t "Enter an integer : ")
    (let ((input (read-line)))
      (when (string= input "exit")
        (return))
      (let ((integer (parse-integer input :junk-allowed t)))
        (cond ((= integer 1) (add-contact))
              ((= integer 2) (search-contact))
              ((= integer 3) (print-address-book))
              ((= integer 4) (return))
              (t (format t "Invalid input.~%~%")))))))

    
(process-input)

