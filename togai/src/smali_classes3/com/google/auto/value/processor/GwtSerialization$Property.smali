.class public Lcom/google/auto/value/processor/GwtSerialization$Property;
.super Ljava/lang/Object;
.source "GwtSerialization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/GwtSerialization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field private final isCastingUnchecked:Z

.field private final property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;


# direct methods
.method constructor <init>(Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 118
    invoke-virtual {p1}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/value/processor/TypeSimplifier;->isCastingUnchecked(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->isCastingUnchecked:Z

    return-void
.end method


# virtual methods
.method public getGetter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 127
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getGetter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGwtCast()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 163
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/auto/value/processor/GwtSerialization$Property;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/auto/value/processor/GwtSerialization$Property;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getGwtType()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 145
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getTypeMirror()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 147
    invoke-virtual {v1}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "java.lang.String"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "String"

    return-object v0

    :cond_1
    const-string v0, "Object"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 135
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 131
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCastingUnchecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->isCastingUnchecked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/GwtSerialization$Property;->property:Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;

    .line 123
    invoke-virtual {v0}, Lcom/google/auto/value/processor/AutoValueishProcessor$GetterProperty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
