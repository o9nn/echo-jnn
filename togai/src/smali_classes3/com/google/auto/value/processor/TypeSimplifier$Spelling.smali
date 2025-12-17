.class Lcom/google/auto/value/processor/TypeSimplifier$Spelling;
.super Ljava/lang/Object;
.source "TypeSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/value/processor/TypeSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Spelling"
.end annotation


# instance fields
.field final importIt:Z

.field final spelling:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;->spelling:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/auto/value/processor/TypeSimplifier$Spelling;->importIt:Z

    return-void
.end method
