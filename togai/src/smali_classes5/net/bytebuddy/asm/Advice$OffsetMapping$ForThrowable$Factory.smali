.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "Lnet/bytebuddy/asm/Advice$Thrown;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3371
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;"
        }
    .end annotation

    .line 3381
    invoke-interface {p0}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object p0

    const-class v0, Lnet/bytebuddy/asm/Advice$OnMethodExit;

    .line 3382
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationList;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;

    move-result-object p0

    .line 3383
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->access$600()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->getValue(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    const-class v0, Lnet/bytebuddy/description/type/TypeDescription;

    .line 3384
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/description/type/TypeDescription;

    const-class v0, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;

    .line 3385
    invoke-interface {p0, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;

    const-class v0, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$Illegal;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    .line 3366
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    .line 3366
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$Thrown;",
            ">;"
        }
    .end annotation

    .line 3392
    const-class v0, Lnet/bytebuddy/asm/Advice$Thrown;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/asm/Advice$Thrown;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 3401
    invoke-virtual {p3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->isDelegation()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-interface {p3}, Lnet/bytebuddy/asm/Advice$Thrown;->readOnly()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3402
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot use writable "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " on read-only parameter"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3404
    :cond_1
    :goto_0
    new-instance p3, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/asm/Advice$Thrown;

    invoke-direct {p3, p1, p2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForThrowable;-><init>(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/asm/Advice$Thrown;)V

    return-object p3
.end method
