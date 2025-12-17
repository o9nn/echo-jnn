.class public final Lcom/google/auto/value/extension/serializable/serializer/impl/IdentitySerializerFactory;
.super Ljava/lang/Object;
.source "IdentitySerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/value/extension/serializable/serializer/impl/IdentitySerializerFactory$IdentitySerializer;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializer(Ljavax/lang/model/type/TypeMirror;)Lcom/google/auto/value/extension/serializable/serializer/interfaces/Serializer;
    .locals 1

    .line 27
    new-instance v0, Lcom/google/auto/value/extension/serializable/serializer/impl/IdentitySerializerFactory$IdentitySerializer;

    invoke-direct {v0, p0}, Lcom/google/auto/value/extension/serializable/serializer/impl/IdentitySerializerFactory$IdentitySerializer;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    return-object v0
.end method
