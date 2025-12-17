.class Lorg/mockito/internal/matchers/text/FormattedText;
.super Ljava/lang/Object;
.source "FormattedText.java"


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mockito/internal/matchers/text/FormattedText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mockito/internal/matchers/text/FormattedText;->text:Ljava/lang/String;

    return-object v0
.end method
