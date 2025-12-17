.class public final Lcom/brentvatne/common/api/SubtitleStyle;
.super Ljava/lang/Object;
.source "SubtitleStyle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brentvatne/common/api/SubtitleStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0007R\u001e\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0007R\u001e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/brentvatne/common/api/SubtitleStyle;",
        "",
        "()V",
        "<set-?>",
        "",
        "fontSize",
        "getFontSize",
        "()I",
        "",
        "opacity",
        "getOpacity",
        "()F",
        "paddingBottom",
        "getPaddingBottom",
        "paddingLeft",
        "getPaddingLeft",
        "paddingRight",
        "getPaddingRight",
        "paddingTop",
        "getPaddingTop",
        "Companion",
        "react-native-video_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/brentvatne/common/api/SubtitleStyle$Companion;

.field private static final PROP_FONT_SIZE_TRACK:Ljava/lang/String; = "fontSize"

.field private static final PROP_OPACITY:Ljava/lang/String; = "opacity"

.field private static final PROP_PADDING_BOTTOM:Ljava/lang/String; = "paddingBottom"

.field private static final PROP_PADDING_LEFT:Ljava/lang/String; = "paddingLeft"

.field private static final PROP_PADDING_RIGHT:Ljava/lang/String; = "paddingRight"

.field private static final PROP_PADDING_TOP:Ljava/lang/String; = "paddingTop"


# instance fields
.field private fontSize:I

.field private opacity:F

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/brentvatne/common/api/SubtitleStyle$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/brentvatne/common/api/SubtitleStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/brentvatne/common/api/SubtitleStyle;->Companion:Lcom/brentvatne/common/api/SubtitleStyle$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->fontSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->opacity:F

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/brentvatne/common/api/SubtitleStyle;-><init>()V

    return-void
.end method

.method public static final synthetic access$setFontSize$p(Lcom/brentvatne/common/api/SubtitleStyle;I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->fontSize:I

    return-void
.end method

.method public static final synthetic access$setOpacity$p(Lcom/brentvatne/common/api/SubtitleStyle;F)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->opacity:F

    return-void
.end method

.method public static final synthetic access$setPaddingBottom$p(Lcom/brentvatne/common/api/SubtitleStyle;I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingBottom:I

    return-void
.end method

.method public static final synthetic access$setPaddingLeft$p(Lcom/brentvatne/common/api/SubtitleStyle;I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingLeft:I

    return-void
.end method

.method public static final synthetic access$setPaddingRight$p(Lcom/brentvatne/common/api/SubtitleStyle;I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingRight:I

    return-void
.end method

.method public static final synthetic access$setPaddingTop$p(Lcom/brentvatne/common/api/SubtitleStyle;I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingTop:I

    return-void
.end method

.method public static final parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/SubtitleStyle;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/brentvatne/common/api/SubtitleStyle;->Companion:Lcom/brentvatne/common/api/SubtitleStyle$Companion;

    invoke-virtual {v0, p0}, Lcom/brentvatne/common/api/SubtitleStyle$Companion;->parse(Lcom/facebook/react/bridge/ReadableMap;)Lcom/brentvatne/common/api/SubtitleStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getFontSize()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->fontSize:I

    return v0
.end method

.method public final getOpacity()F
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->opacity:F

    return v0
.end method

.method public final getPaddingBottom()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingBottom:I

    return v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingLeft:I

    return v0
.end method

.method public final getPaddingRight()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingRight:I

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    iget v0, p0, Lcom/brentvatne/common/api/SubtitleStyle;->paddingTop:I

    return v0
.end method
