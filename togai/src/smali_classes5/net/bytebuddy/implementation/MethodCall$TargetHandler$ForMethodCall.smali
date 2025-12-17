.class public Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;
.super Ljava/lang/Object;
.source "MethodCall.java"

# interfaces
.implements Lnet/bytebuddy/implementation/MethodCall$TargetHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/MethodCall$TargetHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForMethodCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Factory;,
        Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final appender:Lnet/bytebuddy/implementation/MethodCall$Appender;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/MethodCall$Appender;)V
    .locals 0

    .line 2550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    check-cast p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;

    iget-object p1, p1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/implementation/MethodCall$Appender;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    .line 2558
    invoke-static {v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->access$000(Lnet/bytebuddy/implementation/MethodCall$Appender;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler;->resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;

    move-result-object v0

    .line 2559
    new-instance v1, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;

    iget-object v2, p0, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall;->appender:Lnet/bytebuddy/implementation/MethodCall$Appender;

    invoke-virtual {v2, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$Appender;->toInvokedMethod(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)Lnet/bytebuddy/description/method/MethodDescription;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1, v0}, Lnet/bytebuddy/implementation/MethodCall$TargetHandler$ForMethodCall$Resolved;-><init>(Lnet/bytebuddy/implementation/MethodCall$Appender;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/MethodCall$TargetHandler$Resolved;)V

    return-object v1
.end method
