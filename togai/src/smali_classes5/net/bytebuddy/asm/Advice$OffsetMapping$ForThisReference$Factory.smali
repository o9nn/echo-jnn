.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "Lnet/bytebuddy/asm/Advice$This;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1831
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1826
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    .line 1826
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    .line 1826
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$This;",
            ">;"
        }
    .end annotation

    .line 1837
    const-class v0, Lnet/bytebuddy/asm/Advice$This;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/asm/Advice$This;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 1846
    invoke-virtual {p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->isDelegation()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/asm/Advice$This;

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$This;->readOnly()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1847
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot write to this reference for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " in read-only context"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1849
    :cond_1
    :goto_0
    new-instance p3, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/asm/Advice$This;

    invoke-direct {p3, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThisReference;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$This;)V

    return-object p3
.end method
