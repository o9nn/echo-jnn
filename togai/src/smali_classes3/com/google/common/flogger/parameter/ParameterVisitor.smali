.class public interface abstract Lcom/google/common/flogger/parameter/ParameterVisitor;
.super Ljava/lang/Object;
.source "ParameterVisitor.java"


# virtual methods
.method public abstract visit(Ljava/lang/Object;Lcom/google/common/flogger/backend/FormatChar;Lcom/google/common/flogger/backend/FormatOptions;)V
.end method

.method public abstract visitDateTime(Ljava/lang/Object;Lcom/google/common/flogger/parameter/DateTimeFormat;Lcom/google/common/flogger/backend/FormatOptions;)V
.end method

.method public abstract visitMissing()V
.end method

.method public abstract visitNull()V
.end method

.method public abstract visitPreformatted(Ljava/lang/Object;Ljava/lang/String;)V
.end method
