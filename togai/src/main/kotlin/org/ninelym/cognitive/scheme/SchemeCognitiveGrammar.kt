package org.ninelym.cognitive.scheme

import org.ninelym.cognitive.hypergraph.Atom
import org.ninelym.cognitive.hypergraph.AtomType
import org.ninelym.cognitive.hypergraph.TruthValue

/**
 * Scheme-based cognitive grammar for symbolic reasoning
 * 
 * Provides a simplified Scheme-like syntax for expressing cognitive operations
 * and translating between symbolic expressions and hypergraph patterns
 */
class SchemeCognitiveGrammar {
    
    /**
     * Parse a simple S-expression into cognitive atoms
     */
    fun parseExpression(expression: String): List<Atom> {
        val tokens = tokenize(expression)
        return parseTokens(tokens)
    }
    
    /**
     * Convert atoms back to Scheme expression
     */
    fun atomsToExpression(atoms: List<Atom>): String {
        if (atoms.isEmpty()) return "()"
        
        return atoms.joinToString(" ", "(", ")") { atom ->
            when (atom.type) {
                AtomType.CONCEPT -> atom.name
                AtomType.PREDICATE -> "(${atom.name})"
                AtomType.EVALUATION -> "(eval ${atom.name})"
                AtomType.INHERITANCE -> "(inherit ${atom.name})"
                AtomType.SIMILARITY -> "(similar ${atom.name})"
                AtomType.IMPLICATION -> "(implies ${atom.name})"
                else -> atom.name
            }
        }
    }
    
    /**
     * Basic cognitive operations in Scheme syntax
     */
    fun evaluateOperation(operation: String, args: List<String>): Atom? {
        return when (operation.lowercase()) {
            "concept" -> {
                if (args.isNotEmpty()) {
                    Atom(
                        id = generateId(),
                        type = AtomType.CONCEPT,
                        name = args[0],
                        truthValue = TruthValue.DEFAULT
                    )
                } else null
            }
            "inherit" -> {
                if (args.size >= 2) {
                    Atom(
                        id = generateId(),
                        type = AtomType.INHERITANCE,
                        name = "${args[0]}->${args[1]}",
                        truthValue = TruthValue.TRUE
                    )
                } else null
            }
            "similar" -> {
                if (args.size >= 2) {
                    Atom(
                        id = generateId(),
                        type = AtomType.SIMILARITY,
                        name = "${args[0]}<->${args[1]}",
                        truthValue = TruthValue.TRUE
                    )
                } else null
            }
            "implies" -> {
                if (args.size >= 2) {
                    Atom(
                        id = generateId(),
                        type = AtomType.IMPLICATION,
                        name = "${args[0]}=>${args[1]}",
                        truthValue = TruthValue.TRUE
                    )
                } else null
            }
            else -> null
        }
    }
    
    private fun tokenize(expression: String): List<String> {
        return expression
            .replace("(", " ( ")
            .replace(")", " ) ")
            .trim()
            .split("\\s+".toRegex())
            .filter { it.isNotEmpty() }
    }
    
    private fun parseTokens(tokens: List<String>): List<Atom> {
        val atoms = mutableListOf<Atom>()
        var i = 0
        
        while (i < tokens.size) {
            val token = tokens[i]
            
            if (token == "(") {
                // Find matching closing parenthesis
                var depth = 1
                var j = i + 1
                while (j < tokens.size && depth > 0) {
                    if (tokens[j] == "(") depth++
                    else if (tokens[j] == ")") depth--
                    j++
                }
                
                if (depth == 0) {
                    // Extract expression between parentheses
                    val subTokens = tokens.subList(i + 1, j - 1)
                    if (subTokens.isNotEmpty()) {
                        val operation = subTokens[0]
                        val args = subTokens.drop(1)
                        evaluateOperation(operation, args)?.let { atoms.add(it) }
                    }
                    i = j
                } else {
                    i++
                }
            } else if (token != ")") {
                // Simple atom
                atoms.add(Atom(
                    id = generateId(),
                    type = AtomType.CONCEPT,
                    name = token,
                    truthValue = TruthValue.DEFAULT
                ))
                i++
            } else {
                i++
            }
        }
        
        return atoms
    }
    
    private fun generateId(): String = "atom-${System.currentTimeMillis()}-${(Math.random() * 1000).toInt()}"
}

/**
 * Microservice interface for cognitive grammar operations
 */
interface CognitiveGrammarService {
    fun parseToAtoms(expression: String): List<Atom>
    fun atomsToScheme(atoms: List<Atom>): String
    fun evaluateExpression(expression: String): Atom?
    fun validateSyntax(expression: String): Boolean
}