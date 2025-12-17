.class public Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;
.super Ljava/lang/Object;
.source "InvokeDynamic.java"

# interfaces
.implements Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExplicitName"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final internalName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;->internalName:Ljava/lang/String;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;->internalName:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;

    iget-object p1, p1, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;->internalName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;->internalName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lnet/bytebuddy/implementation/InvokeDynamic$InvocationProvider$NameProvider$ForExplicitName;->internalName:Ljava/lang/String;

    return-object p1
.end method
