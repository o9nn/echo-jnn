.class public Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfGivenMethod"
.end annotation


# instance fields
.field private final methodDescription:Lnet/bytebuddy/description/method/MethodDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/description/method/MethodDescription;)V
    .locals 0

    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    return-void
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
    .locals 1

    .line 1240
    new-instance p2, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;

    new-instance p3, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver$Simple;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;->methodDescription:Lnet/bytebuddy/description/method/MethodDescription;

    invoke-direct {p3, v0}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver$Simple;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;)V

    return-object p2
.end method
