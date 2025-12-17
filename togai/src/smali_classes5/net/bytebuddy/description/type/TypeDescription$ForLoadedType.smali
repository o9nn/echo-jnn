.class public Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;
.source "TypeDescription.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;
    }
.end annotation


# static fields
.field private static final DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

.field private static final TYPE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient synthetic declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

.field private transient synthetic declaredFields:Lnet/bytebuddy/description/field/FieldList;

.field private transient synthetic declaredMethods:Lnet/bytebuddy/description/method/MethodList;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8161
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$CreationAction;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    .line 8173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    .line 8174
    const-class v1, Lnet/bytebuddy/dynamic/TargetType;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Lnet/bytebuddy/dynamic/TargetType;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8175
    const-class v1, Ljava/lang/Object;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Object;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8176
    const-class v1, Ljava/lang/String;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8177
    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8178
    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Byte;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8179
    const-class v1, Ljava/lang/Short;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Short;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8180
    const-class v1, Ljava/lang/Character;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Character;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8181
    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8182
    const-class v1, Ljava/lang/Long;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Long;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8183
    const-class v1, Ljava/lang/Float;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Float;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8184
    const-class v1, Ljava/lang/Double;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    const-class v3, Ljava/lang/Double;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8185
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8186
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8187
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8188
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8189
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8190
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8191
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8192
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8193
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8207
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    return-void
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 8220
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    .line 8221
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8224
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/description/type/TypeDescription;"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->TYPE_CACHE:Ljava/util/Map;

    .line 8234
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    if-nez v0, :cond_0

    .line 8235
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;-><init>(Ljava/lang/Class;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8525
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8467
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8469
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->NO_NAME:Ljava/lang/String;

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    .line 8471
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 8475
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8477
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[]"

    .line 8478
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8479
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 8481
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8150
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8280
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8281
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8283
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2
    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredAnnotations"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8518
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/annotation/AnnotationList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredAnnotations:Lnet/bytebuddy/description/annotation/AnnotationList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredFields"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8418
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/field/FieldList$ForLoadedFields;-><init>([Ljava/lang/reflect/Field;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/field/FieldList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredFields:Lnet/bytebuddy/description/field/FieldList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/build/CachedReturnPlugin$Enhance;
        value = "declaredMethods"
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 8426
    :cond_0
    new-instance v0, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodList$ForLoadedMethods;-><init>(Ljava/lang/Class;)V

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    move-object v1, v0

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->declaredMethods:Lnet/bytebuddy/description/method/MethodList;

    :goto_1
    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 2

    .line 8372
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8150
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8337
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8338
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8340
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8489
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 8490
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8492
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "L"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 8493
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8347
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8348
    invoke-virtual {v1}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 8350
    new-instance v1, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedMethod;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 8352
    new-instance v0, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/method/MethodDescription$ForLoadedConstructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0

    .line 8354
    :cond_1
    sget-object v0, Lnet/bytebuddy/description/method/MethodDescription;->UNDEFINED:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8362
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8363
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription;

    goto :goto_0

    .line 8365
    :cond_0
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 2

    .line 8323
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    .line 8324
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8326
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes;-><init>([Ljava/lang/reflect/Type;)V

    :goto_0
    return-object v0

    .line 8328
    :cond_1
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->ARRAY_INTERFACES:Lnet/bytebuddy/description/type/TypeList$Generic;

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$Generic$OfLoadedInterfaceTypes;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8500
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8460
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8532
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 3

    .line 8539
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestMembers(Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8433
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8436
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8438
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 8439
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 8440
    new-instance v0, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lnet/bytebuddy/description/type/PackageDescription$Simple;

    const/4 v3, 0x0

    .line 8442
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/bytebuddy/description/type/PackageDescription$Simple;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    .line 8444
    :cond_2
    new-instance v1, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/PackageDescription$ForLoadedPackage;-><init>(Ljava/lang/Package;)V

    return-object v1

    .line 8434
    :cond_3
    :goto_1
    sget-object v0, Lnet/bytebuddy/description/type/PackageDescription;->UNDEFINED:Lnet/bytebuddy/description/type/PackageDescription;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8379
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    .line 8380
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-object v0

    .line 8384
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8386
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[]"

    .line 8387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8388
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 8390
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8453
    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 2

    .line 8309
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8310
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8312
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$OfNonGenericType$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8314
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic;->UNDEFINED:Lnet/bytebuddy/description/type/TypeDescription$Generic;

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$LazyProjection$ForLoadedSuperClass;-><init>(Ljava/lang/Class;)V

    :goto_1
    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8507
    sget-boolean v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->RAW_TYPES:Z

    if-eqz v0, :cond_0

    .line 8508
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8510
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$ForLoadedTypes$OfTypeVariables;->of(Ljava/lang/reflect/GenericDeclaration;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8302
    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    return v0
.end method

.method public isAnonymousType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8398
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8290
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8242
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Ljava/lang/Class;)Z

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

.method public isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2

    .line 8247
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableFrom(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isAssignableTo(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8252
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Ljava/lang/Class;)Z

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

.method public isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 2

    .line 8257
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isAssignableTo(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInHierarchyWith(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8262
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Ljava/lang/Class;)Z

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

.method public isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3

    .line 8267
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v1, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    iget-object v0, v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8268
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isInHierarchyWith(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isLocalType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8405
    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    return v0
.end method

.method public isMemberType()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8410
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    return v0
.end method

.method public isNestHost()Z
    .locals 2

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8544
    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->getNestHost(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestMateOf(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8549
    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

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

.method public isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z
    .locals 3

    .line 8554
    instance-of v0, p1, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;

    iget-object v2, v2, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType$Dispatcher;->isNestmateOf(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->isNestMateOf(Lnet/bytebuddy/description/type/TypeDescription;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    .line 8297
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/reflect/Type;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->type:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    .line 8273
    invoke-super {p0, p1}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase;->represents(Ljava/lang/reflect/Type;)Z

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
