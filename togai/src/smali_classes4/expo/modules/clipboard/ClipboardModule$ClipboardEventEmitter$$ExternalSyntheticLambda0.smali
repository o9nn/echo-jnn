.class public final synthetic Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field public final synthetic f$0:Lexpo/modules/clipboard/ClipboardModule;

.field public final synthetic f$1:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/clipboard/ClipboardModule;

    iput-object p2, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    return-void
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .locals 2

    iget-object v0, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/clipboard/ClipboardModule;

    iget-object v1, p0, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter$$ExternalSyntheticLambda0;->f$1:Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;

    invoke-static {v0, v1}, Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;->$r8$lambda$d1tKNfinl0q1oMhLCrb8_TdZ00E(Lexpo/modules/clipboard/ClipboardModule;Lexpo/modules/clipboard/ClipboardModule$ClipboardEventEmitter;)V

    return-void
.end method
