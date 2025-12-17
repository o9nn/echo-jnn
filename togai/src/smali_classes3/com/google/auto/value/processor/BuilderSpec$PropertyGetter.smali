.class public Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;
.super Ljava/lang/Object;
.source "BuilderSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/BuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyGetter"
.end annotation


# instance fields
.field private final access:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final optional:Lcom/google/auto/value/processor/Optionalish;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/String;Lcom/google/auto/value/processor/Optionalish;)V
    .locals 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->name:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lcom/google/auto/value/processor/SimpleMethod;->access(Ljavax/lang/model/element/ExecutableElement;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->access:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->type:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->optional:Lcom/google/auto/value/processor/Optionalish;

    return-void
.end method


# virtual methods
.method public getAccess()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->access:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()Lcom/google/auto/value/processor/Optionalish;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->optional:Lcom/google/auto/value/processor/Optionalish;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auto/value/processor/BuilderSpec$PropertyGetter;->type:Ljava/lang/String;

    return-object v0
.end method
