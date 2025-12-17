.class public Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;
.super Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;
.source "AnnotationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Loaded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final annotation:Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1313
    invoke-direct {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1347
    :cond_0
    instance-of v1, p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1350
    :cond_1
    check-cast p1, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;

    .line 1351
    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    move-result-object v1

    invoke-virtual {v1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->isResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    invoke-interface {p1}, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded;->resolve()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getState()Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;
    .locals 1

    .line 1321
    sget-object v0, Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;->RESOLVED:Lnet/bytebuddy/description/annotation/AnnotationValue$Loaded$State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    .line 1340
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public represents(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    .line 1335
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 1301
    invoke-virtual {p0}, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->resolve()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/description/annotation/AnnotationValue$ForAnnotationDescription$Loaded;->annotation:Ljava/lang/annotation/Annotation;

    .line 1356
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
