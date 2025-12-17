.class public interface abstract Lcom/brentvatne/receiver/BecomingNoisyListener;
.super Ljava/lang/Object;
.source "BecomingNoisyListener.java"


# static fields
.field public static final NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/brentvatne/receiver/BecomingNoisyListener$1;

    invoke-direct {v0}, Lcom/brentvatne/receiver/BecomingNoisyListener$1;-><init>()V

    sput-object v0, Lcom/brentvatne/receiver/BecomingNoisyListener;->NO_OP:Lcom/brentvatne/receiver/BecomingNoisyListener;

    return-void
.end method


# virtual methods
.method public abstract onAudioBecomingNoisy()V
.end method
