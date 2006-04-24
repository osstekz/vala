/* context.h
 *
 * Copyright (C) 2006 Jürg Billeter <j@bitron.ch>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 * Author:
 * 	Jürg Billeter <j@bitron.ch>
 */

#include <glib.h>

typedef enum _ValaSymbolType ValaSymbolType;
typedef enum _ValaMethodFlags ValaMethodFlags;
typedef enum _ValaStatementType ValaStatementType;
typedef enum _ValaExpressionType ValaExpressionType;
typedef enum _ValaOpType ValaOpType;

typedef struct _ValaContext ValaContext;
typedef struct _ValaSymbol ValaSymbol;
typedef struct _ValaSourceFile ValaSourceFile;
typedef struct _ValaLocation ValaLocation;
typedef struct _ValaNamespace ValaNamespace;
typedef struct _ValaClass ValaClass;
typedef struct _ValaMethod ValaMethod;
typedef struct _ValaStatement ValaStatement;
typedef struct _ValaVariableDeclaration ValaVariableDeclaration;
typedef struct _ValaVariableDeclarator ValaVariableDeclarator;
typedef struct _ValaExpression ValaExpression;
typedef struct _ValaTypeReference ValaTypeReference;
typedef struct _ValaFormalParameter ValaFormalParameter;

enum _ValaSymbolType {
	VALA_SYMBOL_TYPE_ROOT,
	VALA_SYMBOL_TYPE_NAMESPACE,
	VALA_SYMBOL_TYPE_VOID,
	VALA_SYMBOL_TYPE_CLASS,
};

enum _ValaMethodFlags {
	VALA_METHOD_PUBLIC = 0x01,
	VALA_METHOD_STATIC = 0x02,
};

enum _ValaStatementType {
	VALA_STATEMENT_TYPE_BLOCK,
	VALA_STATEMENT_TYPE_EXPRESSION,
	VALA_STATEMENT_TYPE_RETURN,
	VALA_STATEMENT_TYPE_VARIABLE_DECLARATION,
};

enum _ValaExpressionType {
	VALA_EXPRESSION_TYPE_ADDITIVE,
	VALA_EXPRESSION_TYPE_ASSIGNMENT,
	VALA_EXPRESSION_TYPE_EXPRESSION,
	VALA_EXPRESSION_TYPE_INVOCATION,
	VALA_EXPRESSION_TYPE_LITERAL_INTEGER,
	VALA_EXPRESSION_TYPE_LITERAL_STRING,
	VALA_EXPRESSION_TYPE_MEMBER_ACCESS,
	VALA_EXPRESSION_TYPE_PARENTHESIZED,
	VALA_EXPRESSION_TYPE_RETURN,
	VALA_EXPRESSION_TYPE_SIMPLE_NAME,
};

enum _ValaOpType {
	VALA_OP_TYPE_PLUS,
};

struct _ValaContext {
	GList *source_files;
	ValaSymbol *root;
};

struct _ValaSymbol {
	ValaSymbolType type;
	union {
		ValaClass *class;
	};
	GHashTable *symbol_table;
};

struct _ValaSourceFile {
	const char *filename;
	ValaNamespace *root_namespace;
	GList *namespaces;
};

struct _ValaLocation {
	ValaSourceFile *source_file;
	int lineno;
	int colno;
};

struct _ValaNamespace {
	char *name;
	ValaSymbol *symbol;
	GList *classes;
	char *lower_case_cname;
	char *upper_case_cname;
};

struct _ValaClass {
	char *name;
	ValaLocation *location;
	ValaNamespace *namespace;
	ValaClass *base_class;
	GList *base_types;
	GList *methods;
	char *lower_case_cname;
	char *upper_case_cname;
};

struct _ValaMethod {
	char *name;
	ValaLocation *location;
	ValaClass *class;
	ValaTypeReference *return_type;
	GList *formal_parameters;
	ValaMethodFlags modifiers;
	char *cdecl1;
	char *cdecl2;
	ValaStatement *body;
};

struct _ValaStatement {
	ValaStatementType type;
	union {
		struct {
			GList *statements;
		} block;
		ValaExpression *expr;
		ValaVariableDeclaration *variable_declaration;
	};
};

struct _ValaVariableDeclaration {
	ValaTypeReference *type;
	ValaVariableDeclarator *declarator;
};

struct _ValaVariableDeclarator {
	char *name;
	ValaLocation *location;
	ValaExpression *initializer;
};

struct _ValaExpression {
	ValaExpressionType type;
	union {
		char *str;
		ValaExpression *inner;
		struct {
			ValaExpression *left;
			ValaOpType op;
			ValaExpression *right;
		} additive;
		struct {
			ValaExpression *left;
			char *right;
		} member_access;
		struct {
			ValaExpression *call;
			GList *argument_list;
		} invocation;
		struct {
			ValaExpression *left;
			ValaExpression *right;
		} assignment;
	};
};

struct _ValaTypeReference {
	char *namespace_name;
	char *type_name;
	ValaLocation *location;
	ValaSymbol *symbol;
};

struct _ValaFormalParameter {
	char *name;
	ValaTypeReference *type;
	ValaLocation *location;
};

ValaContext *vala_context_new ();
void vala_context_free (ValaContext *context);
void vala_context_parse (ValaContext *context);
void vala_context_add_fundamental_symbols (ValaContext *context);
void vala_context_add_symbols_from_source_files (ValaContext *context);
void vala_context_resolve_types (ValaContext *context);

ValaSourceFile *vala_source_file_new (const char *filename);

void vala_parser_parse (ValaSourceFile *source_file);
