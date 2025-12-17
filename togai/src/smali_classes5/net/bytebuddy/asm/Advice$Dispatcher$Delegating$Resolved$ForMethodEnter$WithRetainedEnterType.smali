.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter$WithRetainedEnterType;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithRetainedEnterType"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    .line 8960
    invoke-direct {p0, p1, p2, p3}, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method


# virtual methods
.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8967
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$Dispatcher$Delegating$Resolved$ForMethodEnter$WithRetainedEnterType;->adviceMethod:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method
