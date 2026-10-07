.class public Lcom/android/settings/PadModeSettings$ScreenLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PadModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PadModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenLockReceiver"
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/PadModeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/PadModeSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/PadModeSettings;

    .line 1846
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1848
    const-string v0, "recentapps"

    iput-object v0, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String;

    .line 1849
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    .line 1850
    const-string v0, "reason"

    iput-object v0, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1854
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1857
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1858
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1859
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1860
    const-string v1, "homekey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1862
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v1, v2}, Lcom/android/settings/PadModeSettings;->onExitEventDeal(Z)V

    goto :goto_0

    .line 1863
    :cond_1
    const-string v1, "recentapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1865
    iget-object v1, p0, Lcom/android/settings/PadModeSettings$ScreenLockReceiver;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v1, v2}, Lcom/android/settings/PadModeSettings;->onExitEventDeal(Z)V

    .line 1869
    .end local v0
    :cond_2
    :goto_0
    return-void

    .line 1855
    :cond_3
    :goto_1
    return-void
.end method
