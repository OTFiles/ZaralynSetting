.class Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;
.super Landroid/os/Handler;
.source "SettingsLauncherShortcutEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsLauncherShortcutEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsLauncherShortcutEnabler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 388
    iput-object p1, p0, Lcom/android/settings/SettingsLauncherShortcutEnabler$MsgHandler;->this$0:Lcom/android/settings/SettingsLauncherShortcutEnabler;

    .line 389
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 393
    if-nez p1, :cond_0

    .line 394
    return-void

    .line 397
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    nop

    .line 405
    :goto_0
    goto :goto_1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 406
    .end local v0
    :goto_1
    return-void
.end method
