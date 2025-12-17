.class public interface abstract Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
.super Ljava/lang/Object;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ForMethodEnter"
.end annotation


# virtual methods
.method public abstract getNamedTypes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isPrependLineNumber()Z
.end method
