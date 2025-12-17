.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFirstBinding"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final replacements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement;",
            ">;)V"
        }
    .end annotation

    .line 1784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bind(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    .line 1792
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 1793
    invoke-interface {v1, p1, p2}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v1

    .line 1794
    invoke-interface {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1798
    :cond_1
    sget-object p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object p1
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;
    .locals 3

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    .line 1805
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    .line 1806
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/MemberSubstitution$Replacement$InvocationType;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;

    move-result-object v1

    .line 1807
    invoke-interface {v1}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding;->isBound()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1811
    :cond_1
    sget-object p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;->INSTANCE:Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Binding$Unresolved;

    return-object p1
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;->replacements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method
