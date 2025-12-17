.class public Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;
.super Ljava/lang/Object;
.source "AsmVisitorWrapper.java"

# interfaces
.implements Lnet/bytebuddy/matcher/ElementMatcher;
.implements Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/matcher/ElementMatcher<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;",
        "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldVisitorWrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iput-object p2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->fieldVisitorWrappers:Ljava/util/List;

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
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;

    iget-object v3, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->fieldVisitorWrappers:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->fieldVisitorWrappers:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->fieldVisitorWrappers:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 240
    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matches(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 268
    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$Entry;->fieldVisitorWrappers:Ljava/util/List;

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;

    .line 276
    invoke-interface {v1, p1, p2, p3}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredFields$FieldVisitorWrapper;->wrap(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;Lnet/bytebuddy/jar/asm/FieldVisitor;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p3

    goto :goto_0

    :cond_0
    return-object p3
.end method
