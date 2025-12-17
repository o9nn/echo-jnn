.class public Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;
.super Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;
.source "Implementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FieldGetter"
.end annotation


# instance fields
.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/field/FieldDescription;Ljava/lang/String;)V
    .locals 0

    .line 1224
    invoke-direct {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lnet/bytebuddy/description/field/FieldDescription;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "$accessor$"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBaseModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1281
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 1269
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/annotation/AnnotationList$Empty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 1200
    invoke-virtual {p0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getDefaultValue()Lnet/bytebuddy/description/annotation/AnnotationValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/annotation/AnnotationValue<",
            "**>;"
        }
    .end annotation

    .line 1255
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue;->UNDEFINED:Lnet/bytebuddy/description/annotation/AnnotationValue;

    return-object v0
.end method

.method public getExceptionTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 1248
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 1241
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/method/ParameterList$Empty;-><init>()V

    return-object v0
.end method

.method public getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 1234
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 1262
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method
