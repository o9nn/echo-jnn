.class public abstract Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithoutSpecification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification$ForMatchedMethod;,
        Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification$ForMatchedField;,
        Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification$ForMatchedByteCodeElement;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

.field protected final replacementFactory:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

.field protected final strict:Z

.field protected final typePoolResolver:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;ZLnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->typePoolResolver:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;

    iput-boolean p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->strict:Z

    iput-object p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replacementFactory:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->strict:Z

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->strict:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->typePoolResolver:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->typePoolResolver:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replacementFactory:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replacementFactory:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->typePoolResolver:Lnet/bytebuddy/asm/MemberSubstitution$TypePoolResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->strict:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replacementFactory:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public replaceWith(Ljava/lang/reflect/Field;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1

    .line 305
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public replaceWith(Ljava/lang/reflect/Method;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1

    .line 354
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public abstract replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;
.end method

.method public replaceWith(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1

    .line 323
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfGivenField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfGivenField;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public replaceWith(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 3

    .line 375
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->isMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfGivenMethod;-><init>(Lnet/bytebuddy/description/method/MethodDescription;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot use "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " as a replacement"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceWithField(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberSubstitution;"
        }
    .end annotation

    .line 336
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;

    invoke-direct {v0, p1}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForFieldAccess$OfMatchedField;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public replaceWithInstrumentedMethod()Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1

    .line 416
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfInstrumentedMethod;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfInstrumentedMethod;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object v0

    return-object v0
.end method

.method public replaceWithMethod(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;)",
            "Lnet/bytebuddy/asm/MemberSubstitution;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->methodGraphCompiler:Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;

    .line 391
    invoke-virtual {p0, p1, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWithMethod(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public replaceWithMethod(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;",
            ")",
            "Lnet/bytebuddy/asm/MemberSubstitution;"
        }
    .end annotation

    .line 405
    new-instance v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$ForMethodInvocation$OfMatchedMethod;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodGraph$Compiler;)V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object p1

    return-object p1
.end method

.method public stub()Lnet/bytebuddy/asm/MemberSubstitution;
    .locals 1

    .line 287
    sget-object v0, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Stubbing;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$WithoutSpecification;->replaceWith(Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution;

    move-result-object v0

    return-object v0
.end method
