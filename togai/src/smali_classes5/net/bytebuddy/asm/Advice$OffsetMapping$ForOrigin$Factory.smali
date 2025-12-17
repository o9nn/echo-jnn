.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "Lnet/bytebuddy/asm/Advice$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2709
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2704
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;
    .locals 1

    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    .line 2704
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    return-object p0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;
    .locals 1

    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    .line 2704
    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$Origin;",
            ">;"
        }
    .end annotation

    .line 2715
    const-class v0, Lnet/bytebuddy/asm/Advice$Origin;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/asm/Advice$Origin;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 2724
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    const-class v0, Ljava/lang/Class;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2725
    sget-object p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedType;

    return-object p1

    .line 2726
    :cond_0
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    const-class v0, Ljava/lang/reflect/Method;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2727
    sget-object p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->METHOD:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    return-object p1

    .line 2728
    :cond_1
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    const-class v0, Ljava/lang/reflect/Constructor;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->represents(Ljava/lang/reflect/Type;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2729
    sget-object p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->CONSTRUCTOR:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    return-object p1

    .line 2730
    :cond_2
    sget-object p3, Lnet/bytebuddy/utility/JavaType;->EXECUTABLE:Lnet/bytebuddy/utility/JavaType;

    invoke-virtual {p3}, Lnet/bytebuddy/utility/JavaType;->getTypeStub()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 2731
    sget-object p1, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;->EXECUTABLE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForInstrumentedMethod;

    return-object p1

    .line 2732
    :cond_3
    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p3

    invoke-interface {p3}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p3

    const-class v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 2733
    invoke-interface {p2}, Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;->loadSilent()Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/asm/Advice$Origin;

    invoke-interface {p1}, Lnet/bytebuddy/asm/Advice$Origin;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin;->parse(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping;

    move-result-object p1

    return-object p1

    .line 2735
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Non-supported type "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " for @Origin annotation"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
