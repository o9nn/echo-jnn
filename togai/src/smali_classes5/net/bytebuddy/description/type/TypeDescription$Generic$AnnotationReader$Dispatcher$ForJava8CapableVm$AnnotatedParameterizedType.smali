.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnnotatedParameterizedType"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# instance fields
.field private final executable:Ljava/lang/reflect/AccessibleObject;

.field private final index:I

.field final synthetic this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;Ljava/lang/reflect/AccessibleObject;I)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    .line 2974
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->executable:Ljava/lang/reflect/AccessibleObject;

    iput p3, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->index:I

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
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->index:I

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;

    iget v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->index:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->executable:Ljava/lang/reflect/AccessibleObject;

    iget-object v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->index:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    invoke-virtual {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->this$0:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;

    .line 2984
    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;->access$700(Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->executable:Ljava/lang/reflect/AccessibleObject;

    sget-object v2, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->NO_ARGUMENTS:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Dispatcher$ForJava8CapableVm$AnnotatedParameterizedType;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2988
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error invoking java.lang.reflect.Executable#getAnnotatedParameterTypes"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2986
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot access java.lang.reflect.Executable#getAnnotatedParameterTypes"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
