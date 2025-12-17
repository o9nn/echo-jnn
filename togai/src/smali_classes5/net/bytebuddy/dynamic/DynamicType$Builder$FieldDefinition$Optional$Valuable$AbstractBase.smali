.class public abstract Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;
.super Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$AbstractBase;
.source "DynamicType.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$AbstractBase<",
        "TU;>;",
        "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable<",
        "TU;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1629
    invoke-direct {p0}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation
.end method

.method public value(D)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1663
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public value(F)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1656
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public value(I)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1642
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public value(J)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1649
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1
.end method

.method public value(Ljava/lang/String;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1

    .line 1671
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set null as a default value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public value(Z)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional<",
            "TU;>;"
        }
    .end annotation

    .line 1635
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional$Valuable$AbstractBase;->defaultValue(Ljava/lang/Object;)Lnet/bytebuddy/dynamic/DynamicType$Builder$FieldDefinition$Optional;

    move-result-object p1

    return-object p1
.end method
