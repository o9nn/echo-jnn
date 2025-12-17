.class final Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;
.super Ljava/lang/Object;
.source "PropertyMirror.java"


# instance fields
.field private final method:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljavax/lang/model/type/TypeMirror;


# direct methods
.method constructor <init>(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->type:Ljavax/lang/model/type/TypeMirror;

    iput-object p2, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->method:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->name:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljavax/lang/model/type/TypeMirror;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/extension/serializable/processor/PropertyMirror;->type:Ljavax/lang/model/type/TypeMirror;

    return-object v0
.end method
