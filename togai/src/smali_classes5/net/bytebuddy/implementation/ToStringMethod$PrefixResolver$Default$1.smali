.class final enum Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default$1;
.super Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;
.source "ToStringMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/ToStringMethod$1;)V

    return-void
.end method


# virtual methods
.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;
    .locals 0

    .line 352
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
