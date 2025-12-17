.class public interface abstract Lcom/google/auto/value/extension/AutoValueExtension$Context;
.super Ljava/lang/Object;
.source "AutoValueExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/extension/AutoValueExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Context"
.end annotation


# virtual methods
.method public abstract abstractMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract autoValueClass()Ljavax/lang/model/element/TypeElement;
.end method

.method public builder()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/auto/value/extension/AutoValueExtension$BuilderContext;",
            ">;"
        }
    .end annotation

    .line 173
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public finalAutoValueClassName()Ljava/lang/String;
    .locals 1

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract packageName()Ljava/lang/String;
.end method

.method public abstract processingEnvironment()Ljavax/annotation/processing/ProcessingEnvironment;
.end method

.method public abstract properties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/element/ExecutableElement;",
            ">;"
        }
    .end annotation
.end method

.method public propertyTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
