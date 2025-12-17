.class final Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;
.super Lcom/google/mediapipe/tasks/components/containers/Category;
.source "AutoValue_Category.java"


# instance fields
.field private final categoryName:Ljava/lang/String;

.field private final displayName:Ljava/lang/String;

.field private final index:I

.field private final score:F


# direct methods
.method constructor <init>(FILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "score",
            "index",
            "categoryName",
            "displayName"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/mediapipe/tasks/components/containers/Category;-><init>()V

    iput p1, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->score:F

    iput p2, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->index:I

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->categoryName:Ljava/lang/String;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->displayName:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null displayName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null categoryName"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public categoryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public displayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public index()I
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->index:I

    return v0
.end method

.method public score()F
    .locals 1

    iget v0, p0, Lcom/google/mediapipe/tasks/components/containers/AutoValue_Category;->score:F

    return v0
.end method
