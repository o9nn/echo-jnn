.class Lautovalue/shaded/com/google$/auto/common/$Overrides$NativeOverrides;
.super Lautovalue/shaded/com/google$/auto/common/$Overrides;
.source "$Overrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lautovalue/shaded/com/google$/auto/common/$Overrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NativeOverrides"
.end annotation


# instance fields
.field private final elementUtils:Ljavax/lang/model/util/Elements;


# direct methods
.method constructor <init>(Ljavax/lang/model/util/Elements;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lautovalue/shaded/com/google$/auto/common/$Overrides;-><init>()V

    iput-object p1, p0, Lautovalue/shaded/com/google$/auto/common/$Overrides$NativeOverrides;->elementUtils:Ljavax/lang/model/util/Elements;

    return-void
.end method


# virtual methods
.method overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
    .locals 1

    iget-object v0, p0, Lautovalue/shaded/com/google$/auto/common/$Overrides$NativeOverrides;->elementUtils:Ljavax/lang/model/util/Elements;

    .line 64
    invoke-interface {v0, p1, p2, p3}, Ljavax/lang/model/util/Elements;->overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result p1

    return p1
.end method
