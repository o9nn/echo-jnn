.class public interface abstract Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# virtual methods
.method public abstract fromProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
.end method

.method public isIdentity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract proxyFieldType()Ljavax/lang/model/type/TypeMirror;
.end method

.method public abstract toProxy(Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;)Lautovalue/shaded/com/squareup/javapoet$/$CodeBlock;
.end method
