.class public Lcom/eko/RNBGDTaskConfig;
.super Ljava/lang/Object;
.source "RNBGDTaskConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public destination:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public metadata:Ljava/lang/String;

.field public reportedBegin:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/eko/RNBGDTaskConfig;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/eko/RNBGDTaskConfig;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/eko/RNBGDTaskConfig;->destination:Ljava/lang/String;

    iput-object p4, p0, Lcom/eko/RNBGDTaskConfig;->metadata:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/eko/RNBGDTaskConfig;->reportedBegin:Z

    return-void
.end method
