.class public Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit$WithoutExceptionHandler;
.super Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WithoutExceptionHandler"
.end annotation


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/description/type/TypeDefinition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ")V"
        }
    .end annotation

    .line 8016
    invoke-direct/range {p0 .. p5}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inlining$Resolved$ForMethodExit;-><init>(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Ljava/util/Map;Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-void
.end method


# virtual methods
.method public getThrowable()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8023
    invoke-static {}, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->access$1600()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method
