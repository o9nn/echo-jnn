.class public Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;
.super Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.source "TypeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LazyFieldList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/description/field/FieldList$AbstractBase<",
        "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0

    .line 4882
    invoke-direct {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 4870
    invoke-virtual {p0, p1}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;->get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4890
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/field/FieldList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ForInlining$WithDecorationOnly$LazyFieldList;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 4897
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/field/FieldList;->size()I

    move-result v0

    return v0
.end method
