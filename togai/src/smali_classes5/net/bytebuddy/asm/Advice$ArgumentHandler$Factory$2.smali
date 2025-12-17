.class final enum Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory$2;
.super Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 4412
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;-><init>(Ljava/lang/String;ILnet/bytebuddy/asm/Advice$1;)V

    return-void
.end method


# virtual methods
.method protected resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/Map;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)",
            "Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;"
        }
    .end annotation

    .line 4418
    new-instance v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p4}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p1, p3, v1, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod$Default$Copying;-><init>(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/TreeMap;Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method
