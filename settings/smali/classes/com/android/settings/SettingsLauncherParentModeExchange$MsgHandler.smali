.class Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;
.super Landroid/os/Handler;
.source "SettingsLauncherParentModeExchange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLauncherParentModeExchange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsLauncherParentModeExchange;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 428
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherParentModeExchange$MsgHandler;->this$0:Lcom/android/settings/SettingsLauncherParentModeExchange;

    .line 429
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 430
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 433
    if-nez p1, :cond_0

    .line 434
    return-void

    .line 437
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 439
    :cond_1
    nop

    .line 445
    :goto_0
    goto :goto_1

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    .end local v0
    :goto_1
    return-void
.end method
