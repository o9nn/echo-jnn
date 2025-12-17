.class public Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;
.super Lnet/bytebuddy/jar/asm/FieldVisitor;
.source "TypePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FieldExtractor"
.end annotation


# instance fields
.field private final annotationTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;"
        }
    .end annotation
.end field

.field private final descriptor:Ljava/lang/String;

.field private final genericSignature:Ljava/lang/String;

.field private final internalName:Ljava/lang/String;

.field private final modifiers:I

.field final synthetic this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

.field private final typeAnnotationTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$AnnotationToken;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 7980
    sget p1, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/FieldVisitor;-><init>(I)V

    iput p2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->modifiers:I

    iput-object p3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->internalName:Ljava/lang/String;

    iput-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->descriptor:Ljava/lang/String;

    iput-object p5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->genericSignature:Ljava/lang/String;

    .line 7985
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    .line 7986
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 4

    .line 8005
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    new-instance v2, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v3, v3, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v2, v3, p1}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, v0, p1, v1, v2}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Ljava/lang/String;Ljava/util/List;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2
.end method

.method public visitEnd()V
    .locals 9

    iget-object v0, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    .line 8010
    invoke-static {v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->access$3400(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;

    iget-object v2, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->internalName:Ljava/lang/String;

    iget v3, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->modifiers:I

    iget-object v4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->descriptor:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->genericSignature:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    iget-object v7, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->annotationTokens:Ljava/util/List;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/pool/TypePool$Default$LazyTypeDescription$FieldToken;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2

    .line 7992
    new-instance p4, Lnet/bytebuddy/jar/asm/TypeReference;

    invoke-direct {p4, p1}, Lnet/bytebuddy/jar/asm/TypeReference;-><init>(I)V

    .line 7993
    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 7995
    new-instance p1, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->typeAnnotationTokens:Ljava/util/Map;

    invoke-direct {p1, p3, p2, p4}, Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant$ForTypeVariable;-><init>(Ljava/lang/String;Lnet/bytebuddy/jar/asm/TypePath;Ljava/util/Map;)V

    .line 8000
    new-instance p2, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;

    iget-object p4, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    new-instance v0, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;

    iget-object v1, p0, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$FieldExtractor;->this$1:Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;

    iget-object v1, v1, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;->this$0:Lnet/bytebuddy/pool/TypePool$Default;

    invoke-direct {v0, v1, p3}, Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator$ForAnnotationProperty;-><init>(Lnet/bytebuddy/pool/TypePool;Ljava/lang/String;)V

    invoke-direct {p2, p4, p1, v0}, Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor$AnnotationExtractor;-><init>(Lnet/bytebuddy/pool/TypePool$Default$TypeExtractor;Lnet/bytebuddy/pool/TypePool$Default$AnnotationRegistrant;Lnet/bytebuddy/pool/TypePool$Default$ComponentTypeLocator;)V

    return-object p2

    .line 7998
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected type reference on field: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lnet/bytebuddy/jar/asm/TypeReference;->getSort()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
