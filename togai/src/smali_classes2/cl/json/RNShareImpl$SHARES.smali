.class final enum Lcl/json/RNShareImpl$SHARES;
.super Ljava/lang/Enum;
.source "RNShareImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/json/RNShareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SHARES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcl/json/RNShareImpl$SHARES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcl/json/RNShareImpl$SHARES;

.field public static final enum discord:Lcl/json/RNShareImpl$SHARES;

.field public static final enum email:Lcl/json/RNShareImpl$SHARES;

.field public static final enum facebook:Lcl/json/RNShareImpl$SHARES;

.field public static final enum facebookstories:Lcl/json/RNShareImpl$SHARES;

.field public static final enum generic:Lcl/json/RNShareImpl$SHARES;

.field public static final enum googleplus:Lcl/json/RNShareImpl$SHARES;

.field public static final enum instagram:Lcl/json/RNShareImpl$SHARES;

.field public static final enum instagramstories:Lcl/json/RNShareImpl$SHARES;

.field public static final enum linkedin:Lcl/json/RNShareImpl$SHARES;

.field public static final enum messenger:Lcl/json/RNShareImpl$SHARES;

.field public static final enum pagesmanager:Lcl/json/RNShareImpl$SHARES;

.field public static final enum pinterest:Lcl/json/RNShareImpl$SHARES;

.field public static final enum sms:Lcl/json/RNShareImpl$SHARES;

.field public static final enum snapchat:Lcl/json/RNShareImpl$SHARES;

.field public static final enum telegram:Lcl/json/RNShareImpl$SHARES;

.field public static final enum twitter:Lcl/json/RNShareImpl$SHARES;

.field public static final enum viber:Lcl/json/RNShareImpl$SHARES;

.field public static final enum whatsapp:Lcl/json/RNShareImpl$SHARES;

.field public static final enum whatsappbusiness:Lcl/json/RNShareImpl$SHARES;


# direct methods
.method private static synthetic $values()[Lcl/json/RNShareImpl$SHARES;
    .locals 19

    sget-object v0, Lcl/json/RNShareImpl$SHARES;->facebook:Lcl/json/RNShareImpl$SHARES;

    sget-object v1, Lcl/json/RNShareImpl$SHARES;->facebookstories:Lcl/json/RNShareImpl$SHARES;

    sget-object v2, Lcl/json/RNShareImpl$SHARES;->generic:Lcl/json/RNShareImpl$SHARES;

    sget-object v3, Lcl/json/RNShareImpl$SHARES;->pagesmanager:Lcl/json/RNShareImpl$SHARES;

    sget-object v4, Lcl/json/RNShareImpl$SHARES;->twitter:Lcl/json/RNShareImpl$SHARES;

    sget-object v5, Lcl/json/RNShareImpl$SHARES;->whatsapp:Lcl/json/RNShareImpl$SHARES;

    sget-object v6, Lcl/json/RNShareImpl$SHARES;->whatsappbusiness:Lcl/json/RNShareImpl$SHARES;

    sget-object v7, Lcl/json/RNShareImpl$SHARES;->instagram:Lcl/json/RNShareImpl$SHARES;

    sget-object v8, Lcl/json/RNShareImpl$SHARES;->instagramstories:Lcl/json/RNShareImpl$SHARES;

    sget-object v9, Lcl/json/RNShareImpl$SHARES;->googleplus:Lcl/json/RNShareImpl$SHARES;

    sget-object v10, Lcl/json/RNShareImpl$SHARES;->email:Lcl/json/RNShareImpl$SHARES;

    sget-object v11, Lcl/json/RNShareImpl$SHARES;->pinterest:Lcl/json/RNShareImpl$SHARES;

    sget-object v12, Lcl/json/RNShareImpl$SHARES;->messenger:Lcl/json/RNShareImpl$SHARES;

    sget-object v13, Lcl/json/RNShareImpl$SHARES;->snapchat:Lcl/json/RNShareImpl$SHARES;

    sget-object v14, Lcl/json/RNShareImpl$SHARES;->sms:Lcl/json/RNShareImpl$SHARES;

    sget-object v15, Lcl/json/RNShareImpl$SHARES;->linkedin:Lcl/json/RNShareImpl$SHARES;

    sget-object v16, Lcl/json/RNShareImpl$SHARES;->telegram:Lcl/json/RNShareImpl$SHARES;

    sget-object v17, Lcl/json/RNShareImpl$SHARES;->viber:Lcl/json/RNShareImpl$SHARES;

    sget-object v18, Lcl/json/RNShareImpl$SHARES;->discord:Lcl/json/RNShareImpl$SHARES;

    filled-new-array/range {v0 .. v18}, [Lcl/json/RNShareImpl$SHARES;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "facebook"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->facebook:Lcl/json/RNShareImpl$SHARES;

    .line 78
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "facebookstories"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->facebookstories:Lcl/json/RNShareImpl$SHARES;

    .line 79
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "generic"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->generic:Lcl/json/RNShareImpl$SHARES;

    .line 80
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "pagesmanager"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->pagesmanager:Lcl/json/RNShareImpl$SHARES;

    .line 81
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string/jumbo v1, "twitter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->twitter:Lcl/json/RNShareImpl$SHARES;

    .line 82
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string/jumbo v1, "whatsapp"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->whatsapp:Lcl/json/RNShareImpl$SHARES;

    .line 83
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string/jumbo v1, "whatsappbusiness"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->whatsappbusiness:Lcl/json/RNShareImpl$SHARES;

    .line 84
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "instagram"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->instagram:Lcl/json/RNShareImpl$SHARES;

    .line 85
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "instagramstories"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->instagramstories:Lcl/json/RNShareImpl$SHARES;

    .line 86
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "googleplus"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->googleplus:Lcl/json/RNShareImpl$SHARES;

    .line 87
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "email"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->email:Lcl/json/RNShareImpl$SHARES;

    .line 88
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "pinterest"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->pinterest:Lcl/json/RNShareImpl$SHARES;

    .line 89
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "messenger"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->messenger:Lcl/json/RNShareImpl$SHARES;

    .line 90
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "snapchat"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->snapchat:Lcl/json/RNShareImpl$SHARES;

    .line 91
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "sms"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->sms:Lcl/json/RNShareImpl$SHARES;

    .line 92
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "linkedin"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->linkedin:Lcl/json/RNShareImpl$SHARES;

    .line 93
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string/jumbo v1, "telegram"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->telegram:Lcl/json/RNShareImpl$SHARES;

    .line 94
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string/jumbo v1, "viber"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->viber:Lcl/json/RNShareImpl$SHARES;

    .line 95
    new-instance v0, Lcl/json/RNShareImpl$SHARES;

    const-string v1, "discord"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcl/json/RNShareImpl$SHARES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->discord:Lcl/json/RNShareImpl$SHARES;

    .line 76
    invoke-static {}, Lcl/json/RNShareImpl$SHARES;->$values()[Lcl/json/RNShareImpl$SHARES;

    move-result-object v0

    sput-object v0, Lcl/json/RNShareImpl$SHARES;->$VALUES:[Lcl/json/RNShareImpl$SHARES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getShareClass(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcl/json/social/ShareIntent;
    .locals 0

    .line 99
    invoke-static {p0}, Lcl/json/RNShareImpl$SHARES;->valueOf(Ljava/lang/String;)Lcl/json/RNShareImpl$SHARES;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcl/json/RNShareImpl$SHARES;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :pswitch_0
    new-instance p0, Lcl/json/social/DiscordShare;

    invoke-direct {p0, p1}, Lcl/json/social/DiscordShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 136
    :pswitch_1
    new-instance p0, Lcl/json/social/ViberShare;

    invoke-direct {p0, p1}, Lcl/json/social/ViberShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 134
    :pswitch_2
    new-instance p0, Lcl/json/social/TelegramShare;

    invoke-direct {p0, p1}, Lcl/json/social/TelegramShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 132
    :pswitch_3
    new-instance p0, Lcl/json/social/LinkedinShare;

    invoke-direct {p0, p1}, Lcl/json/social/LinkedinShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 126
    :pswitch_4
    new-instance p0, Lcl/json/social/SMSShare;

    invoke-direct {p0, p1}, Lcl/json/social/SMSShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 128
    :pswitch_5
    new-instance p0, Lcl/json/social/SnapChatShare;

    invoke-direct {p0, p1}, Lcl/json/social/SnapChatShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 130
    :pswitch_6
    new-instance p0, Lcl/json/social/MessengerShare;

    invoke-direct {p0, p1}, Lcl/json/social/MessengerShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 124
    :pswitch_7
    new-instance p0, Lcl/json/social/PinterestShare;

    invoke-direct {p0, p1}, Lcl/json/social/PinterestShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 122
    :pswitch_8
    new-instance p0, Lcl/json/social/EmailShare;

    invoke-direct {p0, p1}, Lcl/json/social/EmailShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 120
    :pswitch_9
    new-instance p0, Lcl/json/social/GooglePlusShare;

    invoke-direct {p0, p1}, Lcl/json/social/GooglePlusShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 118
    :pswitch_a
    new-instance p0, Lcl/json/social/InstagramStoriesShare;

    invoke-direct {p0, p1}, Lcl/json/social/InstagramStoriesShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 116
    :pswitch_b
    new-instance p0, Lcl/json/social/InstagramShare;

    invoke-direct {p0, p1}, Lcl/json/social/InstagramShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 114
    :pswitch_c
    new-instance p0, Lcl/json/social/WhatsAppBusinessShare;

    invoke-direct {p0, p1}, Lcl/json/social/WhatsAppBusinessShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 112
    :pswitch_d
    new-instance p0, Lcl/json/social/WhatsAppShare;

    invoke-direct {p0, p1}, Lcl/json/social/WhatsAppShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 110
    :pswitch_e
    new-instance p0, Lcl/json/social/TwitterShare;

    invoke-direct {p0, p1}, Lcl/json/social/TwitterShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 108
    :pswitch_f
    new-instance p0, Lcl/json/social/FacebookPagesManagerShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookPagesManagerShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 102
    :pswitch_10
    new-instance p0, Lcl/json/social/GenericShare;

    invoke-direct {p0, p1}, Lcl/json/social/GenericShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 106
    :pswitch_11
    new-instance p0, Lcl/json/social/FacebookStoriesShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookStoriesShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    .line 104
    :pswitch_12
    new-instance p0, Lcl/json/social/FacebookShare;

    invoke-direct {p0, p1}, Lcl/json/social/FacebookShare;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcl/json/RNShareImpl$SHARES;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcl/json/RNShareImpl$SHARES;

    .line 76
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcl/json/RNShareImpl$SHARES;

    return-object p0
.end method

.method public static values()[Lcl/json/RNShareImpl$SHARES;
    .locals 1

    sget-object v0, Lcl/json/RNShareImpl$SHARES;->$VALUES:[Lcl/json/RNShareImpl$SHARES;

    .line 76
    invoke-virtual {v0}, [Lcl/json/RNShareImpl$SHARES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcl/json/RNShareImpl$SHARES;

    return-object v0
.end method
