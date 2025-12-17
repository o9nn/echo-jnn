.class public Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;
.super Ljava/lang/Object;
.source "MethodGraph.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/MethodGraph;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Graph"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key<",
            "Lnet/bytebuddy/description/method/MethodDescription$TypeToken;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;",
            ">;)V"
        }
    .end annotation

    .line 1703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public listNodes()Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;
    .locals 3

    .line 1721
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$NodeList;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public locate(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Store$Graph;->entries:Ljava/util/LinkedHashMap;

    .line 1711
    invoke-static {p1}, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;->of(Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;)Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler$Default$Key$Detached;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node;

    if-nez p1, :cond_0

    .line 1712
    sget-object p1, Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Node$Unresolved;

    :cond_0
    return-object p1
.end method
