;;; atomspace-interface.scm - Unified AtomSpace Interface for Project Chimera
;;; 
;;; This module provides a unified interface to the AtomSpace hypergraph
;;; knowledge representation system, consolidating implementations from
;;; deltecho, togai, nanocyc, and nnoi into a single coherent API.
;;;
;;; The AtomSpace serves as the cognitive memory substrate for the
;;; Ouroboros-1 Agent-Zero instance and the Daedalos operating system.

(define-module (chimera atomspace interface)
  #:export (
    ;; Core AtomSpace operations
    make-atomspace
    atomspace-add-node
    atomspace-add-link
    atomspace-get-atom
    atomspace-remove-atom
    atomspace-clear
    
    ;; Node types
    make-concept-node
    make-predicate-node
    make-schema-node
    make-grounded-node
    make-variable-node
    
    ;; Link types
    make-inheritance-link
    make-evaluation-link
    make-execution-link
    make-similarity-link
    make-member-link
    make-context-link
    
    ;; Truth values
    make-simple-truth-value
    make-count-truth-value
    make-indefinite-truth-value
    tv-strength
    tv-confidence
    tv-count
    
    ;; Attention values (ECAN integration)
    make-attention-value
    av-sti
    av-lti
    av-vlti
    set-attention-value!
    
    ;; Query operations
    atomspace-query
    atomspace-pattern-match
    atomspace-get-incoming
    atomspace-get-outgoing
    
    ;; Serialization
    atomspace-to-scm
    atomspace-from-scm
    atomspace-to-json
    atomspace-from-json
    
    ;; Integration hooks
    atomspace-register-callback
    atomspace-notify-change
  ))

;;; ============================================================
;;; Core Data Structures
;;; ============================================================

;; Atom base record
(define-record-type <atom>
  (make-atom-internal type name uuid tv av)
  atom?
  (type atom-type)
  (name atom-name)
  (uuid atom-uuid)
  (tv atom-truth-value set-atom-truth-value!)
  (av atom-attention-value set-atom-attention-value!))

;; Node record (extends atom conceptually)
(define-record-type <node>
  (make-node-internal type name uuid tv av)
  node?
  (type node-type)
  (name node-name)
  (uuid node-uuid)
  (tv node-truth-value set-node-truth-value!)
  (av node-attention-value set-node-attention-value!))

;; Link record
(define-record-type <link>
  (make-link-internal type outgoing uuid tv av)
  link?
  (type link-type)
  (outgoing link-outgoing)
  (uuid link-uuid)
  (tv link-truth-value set-link-truth-value!)
  (av link-attention-value set-link-attention-value!))

;; Truth Value record
(define-record-type <truth-value>
  (make-truth-value-internal type strength confidence count)
  truth-value?
  (type tv-type)
  (strength tv-strength)
  (confidence tv-confidence)
  (count tv-count))

;; Attention Value record (ECAN)
(define-record-type <attention-value>
  (make-attention-value-internal sti lti vlti)
  attention-value?
  (sti av-sti set-av-sti!)
  (lti av-lti set-av-lti!)
  (vlti av-vlti set-av-vlti!))

;; AtomSpace container
(define-record-type <atomspace>
  (make-atomspace-internal name atoms-by-uuid atoms-by-type callbacks)
  atomspace?
  (name atomspace-name)
  (atoms-by-uuid atomspace-atoms-by-uuid)
  (atoms-by-type atomspace-atoms-by-type)
  (callbacks atomspace-callbacks set-atomspace-callbacks!))

;;; ============================================================
;;; UUID Generation
;;; ============================================================

(define *uuid-counter* 0)

(define (generate-uuid)
  "Generate a unique identifier for atoms"
  (set! *uuid-counter* (+ *uuid-counter* 1))
  (string-append "atom-" (number->string *uuid-counter*)))

;;; ============================================================
;;; Truth Value Constructors
;;; ============================================================

(define* (make-simple-truth-value #:optional (strength 1.0) (confidence 0.9))
  "Create a simple truth value with strength and confidence"
  (make-truth-value-internal 'simple strength confidence 1))

(define* (make-count-truth-value #:optional (strength 1.0) (confidence 0.9) (count 1))
  "Create a count truth value with strength, confidence, and count"
  (make-truth-value-internal 'count strength confidence count))

(define* (make-indefinite-truth-value #:optional (strength 0.5) (confidence 0.0))
  "Create an indefinite truth value representing uncertainty"
  (make-truth-value-internal 'indefinite strength confidence 0))

(define (default-truth-value)
  "Return the default truth value"
  (make-simple-truth-value 1.0 0.9))

;;; ============================================================
;;; Attention Value Constructors (ECAN Integration)
;;; ============================================================

(define* (make-attention-value #:optional (sti 0) (lti 0) (vlti #f))
  "Create an attention value with STI, LTI, and VLTI
   STI = Short-Term Importance (current relevance)
   LTI = Long-Term Importance (persistent relevance)
   VLTI = Very Long-Term Importance (permanent flag)"
  (make-attention-value-internal sti lti vlti))

(define (default-attention-value)
  "Return the default attention value"
  (make-attention-value 0 0 #f))

;;; ============================================================
;;; AtomSpace Constructor
;;; ============================================================

(define* (make-atomspace #:optional (name "default"))
  "Create a new AtomSpace instance"
  (make-atomspace-internal 
    name
    (make-hash-table)  ; atoms-by-uuid
    (make-hash-table)  ; atoms-by-type
    '()))              ; callbacks

;;; ============================================================
;;; Node Constructors
;;; ============================================================

(define* (make-concept-node name #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a ConceptNode representing a concept or category"
  (make-node-internal 'ConceptNode name (generate-uuid) tv av))

(define* (make-predicate-node name #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a PredicateNode representing a predicate or relation"
  (make-node-internal 'PredicateNode name (generate-uuid) tv av))

(define* (make-schema-node name #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a SchemaNode representing an executable procedure"
  (make-node-internal 'SchemaNode name (generate-uuid) tv av))

(define* (make-grounded-node type name #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a GroundedNode with external grounding"
  (make-node-internal type name (generate-uuid) tv av))

(define* (make-variable-node name #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a VariableNode for pattern matching"
  (make-node-internal 'VariableNode name (generate-uuid) tv av))

;;; ============================================================
;;; Link Constructors
;;; ============================================================

(define* (make-inheritance-link subtype supertype #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create an InheritanceLink: subtype inherits from supertype"
  (make-link-internal 'InheritanceLink (list subtype supertype) (generate-uuid) tv av))

(define* (make-evaluation-link predicate arguments #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create an EvaluationLink: predicate applied to arguments"
  (make-link-internal 'EvaluationLink (cons predicate arguments) (generate-uuid) tv av))

(define* (make-execution-link schema arguments #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create an ExecutionLink: schema executed with arguments"
  (make-link-internal 'ExecutionLink (cons schema arguments) (generate-uuid) tv av))

(define* (make-similarity-link atom1 atom2 #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a SimilarityLink: symmetric similarity between atoms"
  (make-link-internal 'SimilarityLink (list atom1 atom2) (generate-uuid) tv av))

(define* (make-member-link member set #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a MemberLink: member belongs to set"
  (make-link-internal 'MemberLink (list member set) (generate-uuid) tv av))

(define* (make-context-link context atom #:key (tv (default-truth-value)) (av (default-attention-value)))
  "Create a ContextLink: atom is valid in context"
  (make-link-internal 'ContextLink (list context atom) (generate-uuid) tv av))

;;; ============================================================
;;; AtomSpace Operations
;;; ============================================================

(define (atomspace-add-node as node)
  "Add a node to the AtomSpace"
  (let ((uuid (node-uuid node))
        (type (node-type node)))
    ;; Add to UUID index
    (hash-set! (atomspace-atoms-by-uuid as) uuid node)
    ;; Add to type index
    (let ((type-set (hash-ref (atomspace-atoms-by-type as) type '())))
      (hash-set! (atomspace-atoms-by-type as) type (cons node type-set)))
    ;; Notify callbacks
    (atomspace-notify-change as 'add-node node)
    node))

(define (atomspace-add-link as link)
  "Add a link to the AtomSpace"
  (let ((uuid (link-uuid link))
        (type (link-type link)))
    ;; Add to UUID index
    (hash-set! (atomspace-atoms-by-uuid as) uuid link)
    ;; Add to type index
    (let ((type-set (hash-ref (atomspace-atoms-by-type as) type '())))
      (hash-set! (atomspace-atoms-by-type as) type (cons link type-set)))
    ;; Notify callbacks
    (atomspace-notify-change as 'add-link link)
    link))

(define (atomspace-get-atom as uuid)
  "Retrieve an atom by UUID"
  (hash-ref (atomspace-atoms-by-uuid as) uuid #f))

(define (atomspace-remove-atom as uuid)
  "Remove an atom from the AtomSpace"
  (let ((atom (atomspace-get-atom as uuid)))
    (when atom
      (hash-remove! (atomspace-atoms-by-uuid as) uuid)
      (atomspace-notify-change as 'remove-atom atom))
    atom))

(define (atomspace-clear as)
  "Clear all atoms from the AtomSpace"
  (hash-clear! (atomspace-atoms-by-uuid as))
  (hash-clear! (atomspace-atoms-by-type as))
  (atomspace-notify-change as 'clear #f))

;;; ============================================================
;;; Query Operations
;;; ============================================================

(define (atomspace-query as type)
  "Query atoms by type"
  (hash-ref (atomspace-atoms-by-type as) type '()))

(define (atomspace-pattern-match as pattern)
  "Pattern match against the AtomSpace (simplified implementation)"
  ;; This is a placeholder for full pattern matching
  ;; Full implementation would integrate with PLN
  (let ((results '()))
    (hash-for-each
      (lambda (uuid atom)
        (when (pattern-matches? pattern atom)
          (set! results (cons atom results))))
      (atomspace-atoms-by-uuid as))
    results))

(define (pattern-matches? pattern atom)
  "Check if an atom matches a pattern (simplified)"
  ;; Placeholder - full implementation needed
  #t)

(define (atomspace-get-incoming as atom)
  "Get all links that have this atom as an outgoing member"
  (let ((results '()))
    (hash-for-each
      (lambda (uuid a)
        (when (and (link? a) (member atom (link-outgoing a)))
          (set! results (cons a results))))
      (atomspace-atoms-by-uuid as))
    results))

(define (atomspace-get-outgoing as link)
  "Get the outgoing set of a link"
  (if (link? link)
      (link-outgoing link)
      '()))

;;; ============================================================
;;; Attention Value Operations (ECAN)
;;; ============================================================

(define (set-attention-value! atom av)
  "Set the attention value of an atom"
  (cond
    ((node? atom) (set-node-attention-value! atom av))
    ((link? atom) (set-link-attention-value! atom av))))

(define (stimulate-atom! atom amount)
  "Increase the STI of an atom (attention stimulation)"
  (let ((av (if (node? atom) (node-attention-value atom) (link-attention-value atom))))
    (set-av-sti! av (+ (av-sti av) amount))))

(define (decay-attention! as decay-rate)
  "Apply attention decay to all atoms in the AtomSpace"
  (hash-for-each
    (lambda (uuid atom)
      (let ((av (if (node? atom) (node-attention-value atom) (link-attention-value atom))))
        (set-av-sti! av (* (av-sti av) (- 1 decay-rate)))))
    (atomspace-atoms-by-uuid as)))

;;; ============================================================
;;; Callback System (Integration Hooks)
;;; ============================================================

(define (atomspace-register-callback as event-type callback)
  "Register a callback for AtomSpace events"
  (let ((callbacks (atomspace-callbacks as)))
    (set-atomspace-callbacks! as (cons (cons event-type callback) callbacks))))

(define (atomspace-notify-change as event-type data)
  "Notify all registered callbacks of a change"
  (for-each
    (lambda (cb)
      (when (eq? (car cb) event-type)
        ((cdr cb) data)))
    (atomspace-callbacks as)))

;;; ============================================================
;;; Serialization
;;; ============================================================

(define (atomspace-to-scm as)
  "Serialize AtomSpace to S-expression"
  (let ((atoms '()))
    (hash-for-each
      (lambda (uuid atom)
        (set! atoms (cons (atom-to-scm atom) atoms)))
      (atomspace-atoms-by-uuid as))
    `(atomspace (name ,(atomspace-name as)) (atoms ,@atoms))))

(define (atom-to-scm atom)
  "Serialize a single atom to S-expression"
  (cond
    ((node? atom)
     `(node (type ,(node-type atom))
            (name ,(node-name atom))
            (uuid ,(node-uuid atom))
            (tv ,(tv-to-scm (node-truth-value atom)))
            (av ,(av-to-scm (node-attention-value atom)))))
    ((link? atom)
     `(link (type ,(link-type atom))
            (outgoing ,(map atom-to-scm (link-outgoing atom)))
            (uuid ,(link-uuid atom))
            (tv ,(tv-to-scm (link-truth-value atom)))
            (av ,(av-to-scm (link-attention-value atom)))))))

(define (tv-to-scm tv)
  "Serialize truth value to S-expression"
  `(tv (type ,(tv-type tv))
       (strength ,(tv-strength tv))
       (confidence ,(tv-confidence tv))
       (count ,(tv-count tv))))

(define (av-to-scm av)
  "Serialize attention value to S-expression"
  `(av (sti ,(av-sti av))
       (lti ,(av-lti av))
       (vlti ,(av-vlti av))))

(define (atomspace-from-scm scm-data)
  "Deserialize AtomSpace from S-expression"
  ;; Implementation for loading saved AtomSpaces
  (let ((as (make-atomspace (cadr (assoc 'name (cdr scm-data))))))
    ;; Load atoms
    as))

(define (atomspace-to-json as)
  "Serialize AtomSpace to JSON string"
  ;; Placeholder - would use a JSON library
  (format #f "~a" (atomspace-to-scm as)))

(define (atomspace-from-json json-string)
  "Deserialize AtomSpace from JSON string"
  ;; Placeholder - would use a JSON library
  (make-atomspace))

;;; ============================================================
;;; Module Initialization
;;; ============================================================

;; Export version info
(define chimera-atomspace-version "1.0.0-chimera")

;; Log initialization
(display "Chimera AtomSpace Interface loaded\n")
