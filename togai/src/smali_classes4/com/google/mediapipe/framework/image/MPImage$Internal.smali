.class final Lcom/google/mediapipe/framework/image/MPImage$Internal;
.super Ljava/lang/Object;
.source "MPImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mediapipe/framework/image/MPImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Internal"
.end annotation


# instance fields
.field private final image:Lcom/google/mediapipe/framework/image/MPImage;


# direct methods
.method private constructor <init>(Lcom/google/mediapipe/framework/image/MPImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mediapipe/framework/image/MPImage$Internal;->image:Lcom/google/mediapipe/framework/image/MPImage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mediapipe/framework/image/MPImage;Lcom/google/mediapipe/framework/image/MPImage$1;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/google/mediapipe/framework/image/MPImage$Internal;-><init>(Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method


# virtual methods
.method acquire()V
    .locals 1

    iget-object v0, p0, Lcom/google/mediapipe/framework/image/MPImage$Internal;->image:Lcom/google/mediapipe/framework/image/MPImage;

    .line 170
    invoke-static {v0}, Lcom/google/mediapipe/framework/image/MPImage;->access$000(Lcom/google/mediapipe/framework/image/MPImage;)V

    return-void
.end method
