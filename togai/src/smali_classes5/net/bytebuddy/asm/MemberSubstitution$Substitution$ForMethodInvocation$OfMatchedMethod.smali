.class public Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;
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
    name = "OfMatchedMethod"
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")V"
        }
    .end annotation

    .line 1265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    return-void
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution;
    .locals 2

    .line 1274
    new-instance p2, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;

    new-instance p3, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver$Matching;

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-direct {p3, p1, v0, v1}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver$Matching;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-direct {p2, p1, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$MethodResolver;)V

    return-object p2
.end method
