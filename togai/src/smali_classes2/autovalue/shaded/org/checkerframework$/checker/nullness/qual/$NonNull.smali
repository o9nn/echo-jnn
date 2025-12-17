.class public interface abstract annotation Lautovalue/shaded/org/checkerframework$/checker/nullness/qual/$NonNull;
.super Ljava/lang/Object;
.source "$NonNull.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lautovalue/shaded/org/checkerframework$/framework/qual/$DefaultFor;
    value = {
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeUseLocation;->EXCEPTION_PARAMETER:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeUseLocation;
    }
.end annotation

.annotation runtime Lautovalue/shaded/org/checkerframework$/framework/qual/$DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lautovalue/shaded/org/checkerframework$/framework/qual/$QualifierForLiterals;
    value = {
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;->STRING:Lautovalue/shaded/org/checkerframework$/framework/qual/$LiteralKind;
    }
.end annotation

.annotation runtime Lautovalue/shaded/org/checkerframework$/framework/qual/$SubtypeOf;
    value = {
        Lautovalue/shaded/org/checkerframework$/checker/nullness/qual/$MonotonicNonNull;
    }
.end annotation

.annotation runtime Lautovalue/shaded/org/checkerframework$/framework/qual/$UpperBoundFor;
    typeKinds = {
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->PACKAGE:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->INT:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->BOOLEAN:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->CHAR:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->DOUBLE:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->FLOAT:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->LONG:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->SHORT:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;,
        .enum Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;->BYTE:Lautovalue/shaded/org/checkerframework$/framework/qual/$TypeKind;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
