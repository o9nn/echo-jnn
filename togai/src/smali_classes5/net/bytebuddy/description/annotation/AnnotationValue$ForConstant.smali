.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForConstant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;,
        Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase<",
        "TU;TU;>;"
    }
.end annotation


# instance fields
.field private final propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;",
            ")V"
        }
    .end annotation

    .line 471
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    iput-object p2, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    return-void
.end method

.method public static of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 553
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 543
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 533
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 665
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 666
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 667
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 668
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 669
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 670
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 671
    :cond_2
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_3

    .line 672
    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 673
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 674
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 675
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 676
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 677
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 678
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 679
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 680
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 681
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 682
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 683
    :cond_8
    instance-of v0, p0, [Z

    if-eqz v0, :cond_9

    .line 684
    check-cast p0, [Z

    check-cast p0, [Z

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 685
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 686
    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 687
    :cond_a
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    .line 688
    check-cast p0, [S

    check-cast p0, [S

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 689
    :cond_b
    instance-of v0, p0, [C

    if-eqz v0, :cond_c

    .line 690
    check-cast p0, [C

    check-cast p0, [C

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 691
    :cond_c
    instance-of v0, p0, [I

    if-eqz v0, :cond_d

    .line 692
    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 693
    :cond_d
    instance-of v0, p0, [J

    if-eqz v0, :cond_e

    .line 694
    check-cast p0, [J

    check-cast p0, [J

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 695
    :cond_e
    instance-of v0, p0, [F

    if-eqz v0, :cond_f

    .line 696
    check-cast p0, [F

    check-cast p0, [F

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 697
    :cond_f
    instance-of v0, p0, [D

    if-eqz v0, :cond_10

    .line 698
    check-cast p0, [D

    check-cast p0, [D

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 699
    :cond_10
    instance-of v0, p0, [Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 700
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    invoke-static {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;

    move-result-object p0

    return-object p0

    .line 702
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a constant annotation value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static of(Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 563
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(S)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 503
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static of(Z)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForNonArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([B)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[B[B>;"
        }
    .end annotation

    .line 583
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->BYTE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([C)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[C[C>;"
        }
    .end annotation

    .line 603
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->CHARACTER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([D)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[D[D>;"
        }
    .end annotation

    .line 643
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->DOUBLE:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([F)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[F[F>;"
        }
    .end annotation

    .line 633
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->FLOAT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([I)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[I[I>;"
        }
    .end annotation

    .line 613
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->INTEGER:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([J)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[J[J>;"
        }
    .end annotation

    .line 623
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->LONG:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 653
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->STRING:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([S)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[S[S>;"
        }
    .end annotation

    .line 593
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->SHORT:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method

.method public static varargs of([Z)Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "[Z[Z>;"
        }
    .end annotation

    .line 573
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;

    sget-object v1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;->BOOLEAN:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate$ForArrayType;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    .line 727
    instance-of v0, p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    .line 722
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;)Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded<",
            "TU;>;"
        }
    .end annotation

    .line 717
    new-instance p1, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    invoke-direct {p1, v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$Loaded;-><init>(Ljava/lang/Object;Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;)V

    return-object p1
.end method

.method public resolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->propertyDelegate:Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant;->value:Ljava/lang/Object;

    .line 732
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForConstant$PropertyDelegate;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
