.class public Lnet/bytebuddy/asm/ModifierAdjustment;
.super Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;
.source "ModifierAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;,
        Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;"
        }
    .end annotation
.end field

.field private final methodAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;>;"
        }
    .end annotation
.end field

.field private final typeAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/asm/ModifierAdjustment;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;>;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment<",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;>;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lnet/bytebuddy/asm/AsmVisitorWrapper$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    iput-object p2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    iput-object p3, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/ModifierAdjustment;

    iget-object v3, p1, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    iget-object v3, p1, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public withConstructorModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 243
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withConstructorModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withConstructorModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 267
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withConstructorModifiers(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ")",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 255
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withConstructorModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withConstructorModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0

    .line 233
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withConstructorModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withFieldModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 154
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withFieldModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withFieldModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 178
    new-instance v0, Lnet/bytebuddy/asm/ModifierAdjustment;

    iget-object v1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 179
    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V

    iget-object p1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    .line 178
    invoke-static {v2, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    invoke-direct {v0, v1, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs withFieldModifiers(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;[",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;",
            ")",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 166
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withFieldModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withFieldModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForField;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0

    .line 144
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withFieldModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withInvokableModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 287
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 311
    new-instance v0, Lnet/bytebuddy/asm/ModifierAdjustment;

    iget-object v1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    iget-object v2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    new-instance v3, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 312
    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V

    iget-object p1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    .line 311
    invoke-static {v3, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ")",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 299
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withInvokableModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0

    .line 277
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withInvokableModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withMethodModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 199
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withMethodModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withMethodModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 223
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isMethod()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withInvokableModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withMethodModifiers(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;[",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;",
            ")",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 211
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withMethodModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withMethodModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForMethod;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withMethodModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withTypeModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->any()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withTypeModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public withTypeModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ">;)",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 133
    new-instance v0, Lnet/bytebuddy/asm/ModifierAdjustment;

    new-instance v1, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;

    .line 134
    invoke-static {p2}, Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;->of(Ljava/util/Collection;)Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment$Adjustment;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/description/modifier/ModifierContributor$Resolver;)V

    iget-object p1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    .line 133
    invoke-static {v1, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    iget-object v1, p0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    invoke-direct {v0, p1, p2, v1}, Lnet/bytebuddy/asm/ModifierAdjustment;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public varargs withTypeModifiers(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;[",
            "Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;",
            ")",
            "Lnet/bytebuddy/asm/ModifierAdjustment;"
        }
    .end annotation

    .line 121
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/bytebuddy/asm/ModifierAdjustment;->withTypeModifiers(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public varargs withTypeModifiers([Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;)Lnet/bytebuddy/asm/ModifierAdjustment;
    .locals 0

    .line 99
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/ModifierAdjustment;->withTypeModifiers(Ljava/util/List;)Lnet/bytebuddy/asm/ModifierAdjustment;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/jar/asm/ClassVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/description/method/MethodList<",
            "*>;II)",
            "Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;"
        }
    .end annotation

    move-object v0, p0

    .line 326
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 327
    invoke-interface {p5}, Lnet/bytebuddy/description/field/FieldList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 330
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 331
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;

    move-object v6, p1

    invoke-direct {v1, p1}, Lnet/bytebuddy/description/method/MethodDescription$Latent$TypeInitializer;-><init>(Lnet/bytebuddy/description/type/TypeDescription;)V

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/MethodDescription;

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 334
    :cond_1
    new-instance v9, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;

    iget-object v3, v0, Lnet/bytebuddy/asm/ModifierAdjustment;->typeAdjustments:Ljava/util/List;

    iget-object v4, v0, Lnet/bytebuddy/asm/ModifierAdjustment;->fieldAdjustments:Ljava/util/List;

    iget-object v5, v0, Lnet/bytebuddy/asm/ModifierAdjustment;->methodAdjustments:Ljava/util/List;

    move-object v1, v9

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;-><init>(Lnet/bytebuddy/jar/asm/ClassVisitor;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/Map;Ljava/util/Map;)V

    return-object v9
.end method

.method public bridge synthetic wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/jar/asm/ClassVisitor;
    .locals 0

    .line 50
    invoke-virtual/range {p0 .. p8}, Lnet/bytebuddy/asm/ModifierAdjustment;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/description/field/FieldList;Lnet/bytebuddy/description/method/MethodList;II)Lnet/bytebuddy/asm/ModifierAdjustment$ModifierAdjustingClassVisitor;

    move-result-object p1

    return-object p1
.end method
