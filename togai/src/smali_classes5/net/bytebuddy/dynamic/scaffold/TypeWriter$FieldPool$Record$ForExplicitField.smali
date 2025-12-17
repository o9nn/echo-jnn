.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;
.super Ljava/lang/Object;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForExplicitField"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

.field private final defaultValue:Ljava/lang/Object;

.field private final fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;


# direct methods
.method public constructor <init>(Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/description/field/FieldDescription;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iput-object p2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    iput-object p3, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 7

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 303
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getActualModifiers()I

    move-result v2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 304
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getInternalName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 305
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 306
    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lnet/bytebuddy/description/field/FieldDescription;->NO_DEFAULT_VALUE:Ljava/lang/Object;

    .line 307
    invoke-virtual {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    .line 303
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 309
    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    .line 310
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    .line 318
    invoke-interface {p2, v1}, Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;->on(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;->apply(Lnet/bytebuddy/jar/asm/FieldVisitor;Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter;)V

    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public getField()Lnet/bytebuddy/description/field/FieldDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    return-object v0
.end method

.method public getFieldAppender()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->attributeAppender:Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->fieldDescription:Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isImplicit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resolveDefault(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$FieldPool$Record$ForExplicitField;->defaultValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method
